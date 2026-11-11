use Cwd qw(getcwd);
use File::Find;

my $graphics_dir = getcwd() . '/Graphics/Figures';

find(
    sub {
        return if -d $_ || !/\.(?:jpg|jpeg|tiff|tif|gif)\z/i;

        my $image = $File::Find::name;

        (my $png = $image) =~ s/\.[^.]+\z/.png/i;

        return if -e $png && (stat($png))[9] >= (stat($image))[9];

        system('sips', '-s', 'format', 'png', $image, '--out', $png) == 0
            or die "Could not convert $image to $png\n";
    },
    $graphics_dir
);