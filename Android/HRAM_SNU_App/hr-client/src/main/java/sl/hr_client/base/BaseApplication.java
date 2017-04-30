package sl.hr_client.base;

import android.app.Application;

import com.android.volley.toolbox.Volley;
import com.igexin.sdk.PushManager;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiskCache;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;

import org.xutils.x;

import java.io.File;

import sl.hr_client.push.GeTuiIntentService;
import sl.hr_client.push.GeTuiPushService;
import sl.hr_client.utils.constant.ConstantData;
import sl.hr_client.utils.net.VolleyUtils;

/**
 * Created by xuzhijix on 2017/2/25.
 */
public class BaseApplication extends Application {
    public static BaseApplication instances;

    @Override
    public void onCreate() {
        super.onCreate();
        instances = this;//单例模式
        //1. 创建一个RequestQueue对象。
        VolleyUtils.requestQueue = Volley.newRequestQueue(getApplicationContext());

        // com.getui.demo.GeTuiPushService 为第三方自定义推送服务
        PushManager.getInstance().initialize(this.getApplicationContext(), GeTuiPushService.class);
        // com.getui.demo.GeTuiIntentService 为第三方自定义的推送服务事件接收类
        PushManager.getInstance().registerPushIntentService(this.getApplicationContext(), GeTuiIntentService.class);
        initUIL();
        x.Ext.init(this);
    }

    private void initUIL(){
        // 配置ImageLoad
        File cacheDir = new File(ConstantData.cachePathForUIL);
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }

        DisplayImageOptions options = new DisplayImageOptions.Builder()
                .cacheInMemory(true).cacheOnDisk(true).build();
        ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(
                getApplicationContext())
                .memoryCacheExtraOptions(480, 800)
                .threadPoolSize(2)
                .threadPriority(Thread.NORM_PRIORITY - 2)
                .denyCacheImageMultipleSizesInMemory()
                .memoryCache(new WeakMemoryCache())
                .memoryCacheSize(2 * 1024 * 1024)
                .diskCacheSize(50 * 1024 * 1024)
                .tasksProcessingOrder(QueueProcessingType.LIFO)
                .diskCacheFileCount(100)
                .diskCache(new UnlimitedDiskCache(cacheDir))
                .defaultDisplayImageOptions(DisplayImageOptions.createSimple())
                .imageDownloader(
                        new BaseImageDownloader(getApplicationContext(),
                                5 * 1000, 30 * 1000)).writeDebugLogs()
                .defaultDisplayImageOptions(options).build();
        ImageLoader.getInstance().init(config);
    }

    public static BaseApplication getInstances() {
        return instances;
    }
}
