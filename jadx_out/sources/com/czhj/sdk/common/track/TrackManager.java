package com.czhj.sdk.common.track;

import android.os.Handler;
import com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackingRequest;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public class TrackManager {
    private static final int MAX_PARALLELS_NUM = 4;
    private static final TrackManager gInstance = new TrackManager();
    private static final int maxRetryNum = 20;
    private Listener mSigmobTrackListener;
    private Listener mToBidTrackListener;
    private RepeatingHandlerRunnable repeatingHandlerRunnable;
    private Handler retryHandler;
    private volatile int retryIndex;
    private List<AdTracker> trackers;
    private long retryExpiredTime = 180000;
    private long retryInterval = 10000;

    public interface Listener {
        void onErrorResponse(AdTracker adTracker, VolleyError volleyError);

        void onSuccess(AdTracker adTracker, NetworkResponse networkResponse);
    }

    private TrackManager() {
    }

    public static TrackManager getInstance() {
        return gInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryFailTracking() {
        this.retryHandler.removeCallbacksAndMessages(null);
        AdTracker.cleanLimitAdTracker(3000L);
        this.trackers = AdTracker.getAdTrackerFromDB(3000, this.retryExpiredTime);
        this.retryIndex = 0;
        int size = this.trackers.size();
        if (size > 4) {
            size = 4;
        }
        for (int i2 = 0; i2 < size; i2++) {
            sendRetryTracking();
        }
        AdTracker.cleanExpiredAdTracker(this.retryExpiredTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRetryTracking() {
        if (this.trackers == null || this.retryIndex >= this.trackers.size()) {
            return;
        }
        List<AdTracker> list = this.trackers;
        int i2 = this.retryIndex;
        this.retryIndex = i2 + 1;
        AdTracker adTracker = list.get(i2);
        final Listener listener = adTracker.getMessageType().equals(AdTracker.MessageType.TRACKING_URL) ? this.mSigmobTrackListener : this.mToBidTrackListener;
        if (listener == null) {
            return;
        }
        sendTracking(adTracker, null, false, true, new Listener() { // from class: com.czhj.sdk.common.track.TrackManager.1
            @Override // com.czhj.sdk.common.track.TrackManager.Listener
            public void onErrorResponse(AdTracker adTracker2, VolleyError volleyError) {
                listener.onErrorResponse(adTracker2, volleyError);
                TrackManager.this.retryHandler.post(new Runnable() { // from class: com.czhj.sdk.common.track.TrackManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        TrackManager.this.sendRetryTracking();
                    }
                });
            }

            @Override // com.czhj.sdk.common.track.TrackManager.Listener
            public void onSuccess(AdTracker adTracker2, NetworkResponse networkResponse) {
                listener.onSuccess(adTracker2, networkResponse);
                TrackManager.this.retryHandler.post(new Runnable() { // from class: com.czhj.sdk.common.track.TrackManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TrackManager.this.sendRetryTracking();
                    }
                });
            }
        });
    }

    public static void sendTracking(final AdTracker adTracker, BaseMacroCommon baseMacroCommon, boolean z2, final boolean z3, final Listener listener) {
        if (adTracker == null || adTracker.getMessageType() == AdTracker.MessageType.QUARTILE_EVENT) {
            return;
        }
        if (!adTracker.isTracked() || z2) {
            String url = adTracker.getUrl();
            if (baseMacroCommon != null) {
                url = baseMacroCommon.macroProcess(url);
            }
            if (!z2) {
                adTracker.setTracked();
            }
            final boolean z4 = adTracker.getId() != null;
            adTracker.setUrl(url);
            TrackingRequest trackingRequest = new TrackingRequest(url, z4 ? 0 : adTracker.getRetryNum().intValue(), new TrackingRequest.RequestListener() { // from class: com.czhj.sdk.common.track.TrackManager.2
                @Override // com.czhj.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    NetworkResponse networkResponse = volleyError.networkResponse;
                    if (z3 && (adTracker.getRetryNum().intValue() > 0 || z4)) {
                        ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.czhj.sdk.common.track.TrackManager.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                boolean z5 = z4;
                                AdTracker adTracker2 = adTracker;
                                if (!z5) {
                                    adTracker2.insertToDB(null);
                                    return;
                                }
                                adTracker2.setRetryCountInc();
                                if (adTracker.getRetryCount() >= 20) {
                                    adTracker.deleteDB();
                                } else {
                                    adTracker.updateToDB();
                                }
                            }
                        });
                    }
                    Listener listener2 = listener;
                    if (listener2 != null) {
                        listener2.onErrorResponse(adTracker, volleyError);
                    }
                    SigmobLog.e(volleyError.getMessage());
                }

                @Override // com.czhj.sdk.common.track.TrackingRequest.RequestListener
                public void onSuccess(NetworkResponse networkResponse) {
                    if (z4) {
                        final AdTracker adTracker2 = adTracker;
                        Objects.requireNonNull(adTracker2);
                        ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.czhj.sdk.common.track.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                adTracker2.deleteDB();
                            }
                        });
                    }
                    Listener listener2 = listener;
                    if (listener2 != null) {
                        listener2.onSuccess(adTracker, networkResponse);
                    }
                }
            });
            SigmobRequestQueue commonRequestQueue = Networking.getCommonRequestQueue();
            SigmobRequestQueue adTrackerRetryQueue = Networking.getAdTrackerRetryQueue();
            if (commonRequestQueue == null && adTrackerRetryQueue == null) {
                SigmobLog.e("RequestQueue is null");
                return;
            }
            if (!z4 ? commonRequestQueue == null : adTrackerRetryQueue != null) {
                commonRequestQueue = adTrackerRetryQueue;
            }
            commonRequestQueue.add(trackingRequest);
        }
    }

    public void setRetryExpiredTime(long j2) {
        this.retryExpiredTime = j2 * 1000;
    }

    public void setRetryInterval(long j2) {
        this.retryInterval = j2 * 1000;
    }

    public void setSigmobTrackListener(Listener listener) {
        this.mSigmobTrackListener = listener;
    }

    public void setToBidTrackListener(Listener listener) {
        this.mToBidTrackListener = listener;
    }

    public void startRetryTracking() {
        if (this.repeatingHandlerRunnable != null) {
            return;
        }
        Handler handler = new Handler(ThreadPoolFactory.BackgroundThreadPool.getInstance().getIOLooper());
        this.retryHandler = handler;
        RepeatingHandlerRunnable repeatingHandlerRunnable = new RepeatingHandlerRunnable(handler) { // from class: com.czhj.sdk.common.track.TrackManager.3
            @Override // com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable
            public void doWork() {
                try {
                    TrackManager.this.retryFailTracking();
                    TrackManager.this.repeatingHandlerRunnable.startRepeating(TrackManager.this.retryInterval);
                } catch (Throwable th) {
                    SigmobLog.e("retryFaildTracking error " + th.getMessage());
                }
            }
        };
        this.repeatingHandlerRunnable = repeatingHandlerRunnable;
        repeatingHandlerRunnable.startRepeating(this.retryInterval);
    }
}
