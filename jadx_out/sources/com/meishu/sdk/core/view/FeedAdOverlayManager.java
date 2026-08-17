package com.meishu.sdk.core.view;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.service.d;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.o;
import com.meishu.sdk.core.utils.r;
import com.meishu.sdk.core.utils.t1;
import com.meishu.sdk.core.view.FeedAdOverlayView;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class FeedAdOverlayManager {
    private static final String KEY_DAILY_COUNT_SUFFIX = "_slide_overlay_daily";
    private static final String KEY_SUFFIX = "_slide_overlay";
    private static final String TAG = "FeedAdOverlayManager";
    private static volatile FeedAdOverlayManager sInstance;
    private final List<OverlayEntry> entries = new ArrayList();
    private final com.meishu.sdk.core.service.a appStateListener = new com.meishu.sdk.core.service.a() { // from class: com.meishu.sdk.core.view.FeedAdOverlayManager.2
        @Override // com.meishu.sdk.core.service.a, com.meishu.sdk.core.service.e
        public void onActivityDestroyed(Activity activity) {
            FeedAdOverlayManager.this.removeByPosIdOrActivity(null, activity, null);
        }

        @Override // com.meishu.sdk.core.service.e
        public boolean onAppStateUpdate(boolean z2) {
            return true;
        }
    };

    public interface OnOverlayTriggerAction {
        void onOverlayAttached();

        void onTrigger(boolean z2, boolean z3, float f2, float f3, long j2, float f4, float f5, int i2);
    }

    public static class OverlayEntry {
        public final WeakReference<Activity> activityRef;
        public WeakReference<View> adContainerRef;
        public final int ecpm;
        public final FeedAdOverlayView overlayView;
        public final String posId;
        public final OnOverlayTriggerAction triggerAction;
        public final String uniqueId;

        public OverlayEntry(Activity activity, View view, FeedAdOverlayView feedAdOverlayView, String str, String str2, int i2, OnOverlayTriggerAction onOverlayTriggerAction) {
            this.activityRef = new WeakReference<>(activity);
            this.adContainerRef = new WeakReference<>(view);
            this.overlayView = feedAdOverlayView;
            this.posId = str;
            this.uniqueId = str2;
            this.ecpm = i2;
            this.triggerAction = onOverlayTriggerAction;
        }
    }

    private FeedAdOverlayManager() {
    }

    public static /* synthetic */ void a(FeedAdOverlayManager feedAdOverlayManager, View view, boolean z2, boolean z3, TouchPoint touchPoint, TouchPoint touchPoint2, int i2, String str) {
        feedAdOverlayManager.getClass();
        try {
            feedAdOverlayManager.handleClick(z2, z3, touchPoint, touchPoint2, i2, view, str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private OverlayEntry findEntryByUniqueId(String str) {
        if (str == null) {
            return null;
        }
        try {
            for (OverlayEntry overlayEntry : this.entries) {
                if (str.equals(overlayEntry.uniqueId)) {
                    return overlayEntry;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static FeedAdOverlayManager getInstance() {
        if (sInstance == null) {
            synchronized (FeedAdOverlayManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new FeedAdOverlayManager();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    private int getTodayCount() {
        String strA = r.a().a(KEY_DAILY_COUNT_SUFFIX, "");
        String todayString = getTodayString();
        if (!strA.startsWith(todayString + ":")) {
            return 0;
        }
        try {
            return Integer.parseInt(strA.substring(todayString.length() + 1));
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static String getTodayString() {
        return new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date());
    }

    private void handleClick(boolean z2, boolean z3, TouchPoint touchPoint, TouchPoint touchPoint2, int i2, View view, String str) {
        if (this.entries.isEmpty()) {
            return;
        }
        Iterator<OverlayEntry> it = this.entries.iterator();
        OverlayEntry overlayEntry = null;
        OverlayEntry overlayEntry2 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            OverlayEntry next = it.next();
            if (next.overlayView.getVisibility() == 0 && t1.a(next.overlayView, touchPoint.downX, touchPoint.downY) && (overlayEntry2 == null || next.ecpm > overlayEntry2.ecpm)) {
                overlayEntry2 = next;
            }
            View view2 = next.adContainerRef.get();
            if (view2 != null && t1.a(view2, touchPoint.downX, touchPoint.downY)) {
                overlayEntry = next;
                break;
            }
        }
        if (overlayEntry == null) {
            overlayEntry = overlayEntry2;
        }
        if (overlayEntry == null) {
            removeInvalidEntryByUniqueId(str);
            return;
        }
        r.a().b(overlayEntry.posId + KEY_SUFFIX, System.currentTimeMillis());
        if (!z3) {
            incrementTodayCount();
        }
        removeByPosIdOrActivity(overlayEntry.posId, overlayEntry.activityRef.get(), str);
        OnOverlayTriggerAction onOverlayTriggerAction = overlayEntry.triggerAction;
        if (onOverlayTriggerAction != null) {
            onOverlayTriggerAction.onTrigger(z2, z3, touchPoint2.downX, touchPoint2.downY, touchPoint2.downTime, touchPoint2.upX, touchPoint2.upY, i2);
        }
    }

    private void incrementTodayCount() {
        String todayString = getTodayString();
        int todayCount = getTodayCount();
        r.a().b(KEY_DAILY_COUNT_SUFFIX, todayString + ":" + (todayCount + 1));
    }

    private void releaseEntriesAdContainerRef(View view) {
        if (view == null) {
            return;
        }
        try {
            for (OverlayEntry overlayEntry : this.entries) {
                if (overlayEntry.adContainerRef.get() == view) {
                    overlayEntry.overlayView.releaseAdContainerRef();
                    overlayEntry.adContainerRef = new WeakReference<>(null);
                    LogUtil.dev(TAG, "releaseEntriesAdContainerRef released uniqueId=" + overlayEntry.uniqueId);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeByPosIdOrActivity(String str, Activity activity, String str2) {
        int i2;
        int i3 = 0;
        try {
            Iterator<OverlayEntry> it = this.entries.iterator();
            i2 = 0;
            while (it.hasNext()) {
                try {
                    OverlayEntry next = it.next();
                    boolean z2 = true;
                    boolean z3 = str != null && str.equals(next.posId);
                    boolean z4 = activity != null && activity == next.activityRef.get();
                    if (str2 == null || !str2.equals(next.uniqueId)) {
                        z2 = false;
                    }
                    if (z3 || z4 || z2) {
                        next.overlayView.detach();
                        it.remove();
                        i2++;
                    }
                } catch (Exception e2) {
                    e = e2;
                    i3 = i2;
                    e.printStackTrace();
                    i2 = i3;
                    LogUtil.d(TAG, "removeByPosIdOrActivity removed=" + i2);
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        LogUtil.d(TAG, "removeByPosIdOrActivity removed=" + i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeInvalidEntryByUniqueId(String str) {
        if (str == null) {
            return;
        }
        try {
            Iterator<OverlayEntry> it = this.entries.iterator();
            while (it.hasNext()) {
                OverlayEntry next = it.next();
                if (str.equals(next.uniqueId)) {
                    if (next.activityRef.get() == null) {
                        next.overlayView.detach();
                        it.remove();
                        LogUtil.dev(TAG, "removeInvalidEntryByUniqueId uniqueId=" + str);
                        return;
                    }
                    return;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void addOverlay(Activity activity, final View view, String str, int i2, BaseAdSlot baseAdSlot, String str2, final OnOverlayTriggerAction onOverlayTriggerAction) {
        if (activity != null && view != null && str != null && baseAdSlot != null) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    int iMax = Math.max(0, baseAdSlot.getExtend_up());
                    int iMax2 = Math.max(0, baseAdSlot.getExtend_down());
                    int iMax3 = Math.max(0, baseAdSlot.getExtend_left());
                    int iMax4 = Math.max(0, baseAdSlot.getExtend_right());
                    int extend_interval = baseAdSlot.getExtend_interval();
                    int extend_max_count = baseAdSlot.getExtend_max_count();
                    int ecpm = baseAdSlot.getEcpm();
                    boolean z2 = (baseAdSlot.getAct_type() & 512) == 512;
                    if (iMax == 0 && iMax2 == 0 && iMax3 == 0 && iMax4 == 0) {
                        LogUtil.dev(TAG, "addOverlay return. extend all 0, feature disabled");
                        return;
                    }
                    if (extend_max_count > 0 && getTodayCount() >= extend_max_count) {
                        LogUtil.dev(TAG, "addOverlay return. daily count limit reached");
                        return;
                    }
                    if (extend_interval > 0) {
                        if (System.currentTimeMillis() - r.a().a(str + KEY_SUFFIX, 0L) < extend_interval * 60000) {
                            LogUtil.dev(TAG, "addOverlay return. interval");
                            return;
                        }
                    }
                    int i3 = activity.getResources().getDisplayMetrics().heightPixels;
                    int measuredHeight = view.getMeasuredHeight();
                    if (measuredHeight * 2 > i3) {
                        LogUtil.dev(TAG, "addOverlay return. adContainer h > 50% screenH adH=" + measuredHeight + " screenH=" + i3);
                        return;
                    }
                    int i4 = ((int) ((i3 * iMax) / 100.0f)) + measuredHeight + ((int) ((i3 * iMax2) / 100.0f));
                    if (i4 * 2 > i3) {
                        float f2 = i3;
                        iMax = Math.round(((((f2 / 2.0f) - measuredHeight) / f2) * 100.0f) / 2.0f);
                        LogUtil.dev(TAG, "addOverlay: extended height > 50% screen, result=" + iMax + " extendedH=" + i4 + " screenH=" + i3);
                        iMax2 = iMax;
                    }
                    OverlayEntry overlayEntryFindEntryByUniqueId = findEntryByUniqueId(str2);
                    if (overlayEntryFindEntryByUniqueId != null) {
                        if (overlayEntryFindEntryByUniqueId.overlayView.getVisibility() == 0) {
                            LogUtil.dev(TAG, "addOverlay return. same ad already has overlay, posId=" + str + " uniqueId=" + str2);
                            return;
                        }
                        LogUtil.dev(TAG, "addOverlay: overlay exists but invisible, requestPositionUpdate posId=" + str + " uniqueId=" + str2);
                        overlayEntryFindEntryByUniqueId.overlayView.requestPositionUpdate();
                        return;
                    }
                    releaseEntriesAdContainerRef(view);
                    ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
                    if (viewGroup == null) {
                        LogUtil.dev(TAG, "addOverlay return. content is null");
                        return;
                    }
                    FeedAdOverlayView feedAdOverlayView = new FeedAdOverlayView(activity, view, new FeedAdOverlayView.OnOverlayClickListener() { // from class: com.meishu.sdk.core.view.a
                        @Override // com.meishu.sdk.core.view.FeedAdOverlayView.OnOverlayClickListener
                        public final void onOverlayClick(boolean z3, boolean z4, TouchPoint touchPoint, TouchPoint touchPoint2, int i5, String str3) {
                            FeedAdOverlayManager.a(this.f32083a, view, z3, z4, touchPoint, touchPoint2, i5, str3);
                        }
                    });
                    feedAdOverlayView.setOverlayUniqueId(str2);
                    feedAdOverlayView.setMinSlideDistanceDp(i2);
                    feedAdOverlayView.setExtendRatios(iMax, iMax2, iMax3, iMax4);
                    feedAdOverlayView.setInvalidityChecker(new FeedAdOverlayView.InvalidityCheckerListener() { // from class: com.meishu.sdk.core.view.b
                        @Override // com.meishu.sdk.core.view.FeedAdOverlayView.InvalidityCheckerListener
                        public final void onInvalid(String str3) {
                            this.f32085a.removeInvalidEntryByUniqueId(str3);
                        }
                    });
                    feedAdOverlayView.setAttachListener(new FeedAdOverlayView.OnOverlayAttachListener() { // from class: com.meishu.sdk.core.view.FeedAdOverlayManager.1
                        @Override // com.meishu.sdk.core.view.FeedAdOverlayView.OnOverlayAttachListener
                        public void onOverlayAttached() {
                            OnOverlayTriggerAction onOverlayTriggerAction2 = onOverlayTriggerAction;
                            if (onOverlayTriggerAction2 != null) {
                                onOverlayTriggerAction2.onOverlayAttached();
                            }
                        }

                        @Override // com.meishu.sdk.core.view.FeedAdOverlayView.OnOverlayAttachListener
                        public void onOverlayDetached() {
                        }
                    });
                    feedAdOverlayView.attachToContent(viewGroup);
                    this.entries.add(new OverlayEntry(activity, view, feedAdOverlayView, str, str2, ecpm, onOverlayTriggerAction));
                    try {
                        d.a(this.appStateListener);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    LogUtil.dev(TAG, "add posId=" + str + " slideClickEnabled=" + z2 + " uniqueId:" + str2);
                    return;
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        LogUtil.dev(TAG, "addOverlay return. is null");
    }

    public void clear() {
        d.b(this.appStateListener);
        Iterator<OverlayEntry> it = this.entries.iterator();
        while (it.hasNext()) {
            it.next().overlayView.detach();
        }
        this.entries.clear();
    }

    public void onAdClickedIfOverlayExists(String str, String str2, Activity activity) {
        if (findEntryByUniqueId(str) != null) {
            r.a().b(o.a(str2, KEY_SUFFIX), System.currentTimeMillis());
            incrementTodayCount();
        }
        removeByPosIdOrActivity(str2, activity, str);
    }

    public void removeOverlay(String str) {
        OverlayEntry overlayEntryFindEntryByUniqueId = findEntryByUniqueId(str);
        if (overlayEntryFindEntryByUniqueId != null) {
            overlayEntryFindEntryByUniqueId.overlayView.detach();
            this.entries.remove(overlayEntryFindEntryByUniqueId);
        }
    }

    public void updateAdContainer(String str, View view) {
        OverlayEntry overlayEntryFindEntryByUniqueId = findEntryByUniqueId(str);
        if (overlayEntryFindEntryByUniqueId == null || view == null || overlayEntryFindEntryByUniqueId.adContainerRef.get() == view) {
            return;
        }
        releaseEntriesAdContainerRef(view);
        overlayEntryFindEntryByUniqueId.overlayView.updateAdContainer(view);
        overlayEntryFindEntryByUniqueId.adContainerRef = new WeakReference<>(view);
        overlayEntryFindEntryByUniqueId.overlayView.requestPositionUpdate();
        LogUtil.dev(TAG, "updateAdContainer uniqueId=" + str);
    }
}
