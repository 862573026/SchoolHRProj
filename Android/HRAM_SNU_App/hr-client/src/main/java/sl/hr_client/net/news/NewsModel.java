package sl.hr_client.net.news;

import android.content.Context;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.Volley;

import rx.Observable;
import rx.Subscriber;
import sl.hr_client.utils.net.XStringRequest;
import sl.hr_client.utils.net.VolleyUtils;

/**
 * Created by Administrator on 2017/4/6.
 */

public class NewsModel {

    public Observable<String> getNews(final Context context,final int pageIndex,final int pageSize) {
        return Observable.create(new Observable.OnSubscribe<String>() {
            @Override
            public void call(final Subscriber<? super String> subscriber) {
                String targetUrl = VolleyUtils.newsUrl + "?pageIndex=" + pageIndex + "&pageSize="+pageSize;

                VolleyUtils.requestQueue = Volley.newRequestQueue(context);
                XStringRequest sr = new XStringRequest(VolleyUtils.VOLLEY_GET, targetUrl, new Response.Listener<String>() {
                    @Override
                    public void onResponse(String s) {
                        subscriber.onNext(s);
                        subscriber.onCompleted();
                    }
                }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError volleyError) {

                    }
                }) {

                };
                VolleyUtils.requestQueue.add(sr);
            }
        });
    }
}
