use Cwd qw(getcwd);
use File::Find;

my $graphics_dir = getcwd() . '/Graphics/Figures';

find(
    sub {
        return unless /\.tiff\z/i;

        my $tiff = $File::Find::name;
        (my $png = $tiff) =~ s/\.tiff\z/.png/i;

        return if -e $png && (stat($png))[9] >= (stat($tiff))[9];

        system('sips', '-s', 'format', 'png', $tiff, '--out', $png) == 0
            or die "Could not convert $tiff to $png\n";
    },
    $graphics_dir
);