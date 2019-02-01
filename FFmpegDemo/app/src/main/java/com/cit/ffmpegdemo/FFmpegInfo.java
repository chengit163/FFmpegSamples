package com.cit.ffmpegdemo;

public class FFmpegInfo
{
    private static boolean isLoaded;

    static
    {
        if (!isLoaded)
        {
            System.loadLibrary("avutil");
            System.loadLibrary("postproc");
            System.loadLibrary("swresample");
            System.loadLibrary("swscale");
            System.loadLibrary("avcodec");
            System.loadLibrary("avformat");
            System.loadLibrary("avfilter");
            System.loadLibrary("avdevice");
            System.loadLibrary("native-lib");
            isLoaded = true;
        }
    }

    public static native String configurationinfo();

    public static native String urlprotocolinfo();

    public static native String avformatinfo();

    public static native String avcodecinfo();

    public static native String avfilterinfo();
}
