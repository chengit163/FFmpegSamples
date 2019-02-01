package com.cit.ffmpegdemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
{
    private TextView infoTv;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main_activity);
        infoTv = findViewById(R.id.info_tv);
    }

    public void onClickConfiguration(View view)
    {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(getString(R.string.configuration)).append("]\n");
        sb.append(FFmpegInfo.configurationinfo());

        String txt = sb.toString().replace(" --", "\n--");
        infoTv.setText(txt);
    }

    public void onClickProtocol(View view)
    {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(getString(R.string.urlprotocol)).append("]\n");
        sb.append(FFmpegInfo.urlprotocolinfo());
        infoTv.setText(sb.toString());
    }

    public void onClickFormat(View view)
    {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(getString(R.string.avformat)).append("]\n");
        sb.append(FFmpegInfo.avformatinfo());
        infoTv.setText(sb.toString());
    }

    public void onClickCodec(View view)
    {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(getString(R.string.avcodec)).append("]\n");
        sb.append(FFmpegInfo.avcodecinfo());
        infoTv.setText(sb.toString());
    }

    public void onClickFilter(View view)
    {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(getString(R.string.avfilter)).append("]\n");
        sb.append(FFmpegInfo.avfilterinfo());
        infoTv.setText(sb.toString());
    }
}
