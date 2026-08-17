package com.bytedance.pangle;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.Keep;
import com.byazt.ik.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

@Keep
/* loaded from: classes3.dex */
public final class LocalBroadcastManager {
    public static final boolean DEBUG = false;
    public static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    public static final String TAG = "LocalBroadcastManager";
    public static LocalBroadcastManager mInstance;
    public static final Object mLock = new Object();
    public final Context mAppContext;
    public final Handler mHandler;
    public final HashMap<PluginBroadcastReceiver, ArrayList<l>> mReceivers = new HashMap<>();
    public final HashMap<String, ArrayList<l>> mActions = new HashMap<>();
    public final ArrayList<hp> mPendingBroadcasts = new ArrayList<>();

    @com.byazt.kj.hp(hp = {0, 124, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD, 840})
    public static final class hp {
        public final Intent hp;

        /* renamed from: l, reason: collision with root package name */
        public final ArrayList<l> f28837l;

        public hp(Intent intent, ArrayList<l> arrayList) {
            this.hp = intent;
            this.f28837l = arrayList;
        }
    }

    @com.byazt.kj.hp(hp = {0, 124, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD, 1637})
    public static final class l {
        public final IntentFilter hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f28838j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public final PluginBroadcastReceiver f28839l;

        public l(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
            this.hp = intentFilter;
            this.f28839l = pluginBroadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f28839l);
            sb.append(" filter=");
            sb.append(this.hp);
            if (this.f28838j) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: com.bytedance.pangle.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                }
            }
        };
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            try {
                if (mInstance == null) {
                    mInstance = new LocalBroadcastManager(context.getApplicationContext());
                }
                localBroadcastManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return localBroadcastManager;
    }

    public void executePendingBroadcasts() {
        int size;
        hp[] hpVarArr;
        while (true) {
            synchronized (this.mReceivers) {
                try {
                    size = this.mPendingBroadcasts.size();
                    if (size <= 0) {
                        return;
                    }
                    hpVarArr = new hp[size];
                    this.mPendingBroadcasts.toArray(hpVarArr);
                    this.mPendingBroadcasts.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                hp hpVar = hpVarArr[i2];
                int size2 = hpVar.f28837l.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    l lVar = hpVar.f28837l.get(i3);
                    if (!lVar.f28838j) {
                        lVar.f28839l.onReceive(this.mAppContext, hpVar.hp);
                    }
                }
            }
        }
    }

    public void registerReceiver(PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            try {
                l lVar = new l(intentFilter, pluginBroadcastReceiver);
                ArrayList<l> arrayList = this.mReceivers.get(pluginBroadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.mReceivers.put(pluginBroadcastReceiver, arrayList);
                }
                arrayList.add(lVar);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<l> arrayList2 = this.mActions.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.mActions.put(action, arrayList2);
                    }
                    arrayList2.add(lVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        String str;
        synchronized (this.mReceivers) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z2 = (intent.getFlags() & 8) != 0;
                if (z2) {
                    a.hp(TAG, "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList<l> arrayList = this.mActions.get(intent.getAction());
                if (arrayList != null) {
                    if (z2) {
                        a.hp(TAG, "Action list: ".concat(String.valueOf(arrayList)));
                    }
                    ArrayList arrayList2 = null;
                    int i2 = 0;
                    while (i2 < arrayList.size()) {
                        l lVar = arrayList.get(i2);
                        if (z2) {
                            a.hp(TAG, "Matching against filter " + lVar.hp);
                        }
                        if (lVar.jx) {
                            if (z2) {
                                a.hp(TAG, "  Filter's target already added");
                            }
                            str = action;
                        } else {
                            int iMatch = lVar.hp.match(action, strResolveTypeIfNeeded, scheme, data, categories, TAG);
                            if (iMatch >= 0) {
                                if (z2) {
                                    str = action;
                                    a.hp(TAG, "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                                } else {
                                    str = action;
                                }
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(lVar);
                                lVar.jx = true;
                            } else {
                                str = action;
                                if (z2) {
                                    a.hp(TAG, "  Filter did not match: ".concat(iMatch != -4 ? iMatch != -3 ? iMatch != -2 ? iMatch != -1 ? "unknown reason" : "type" : "data" : com.umeng.ccg.a.f49772z : PointParamKey.CATEGORY));
                                }
                            }
                        }
                        i2++;
                        action = str;
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((l) arrayList2.get(i3)).jx = false;
                        }
                        this.mPendingBroadcasts.add(new hp(intent, arrayList2));
                        if (!this.mHandler.hasMessages(1)) {
                            this.mHandler.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
        synchronized (this.mReceivers) {
            try {
                ArrayList<l> arrayListRemove = this.mReceivers.remove(pluginBroadcastReceiver);
                if (arrayListRemove == null) {
                    return;
                }
                for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                    l lVar = arrayListRemove.get(size);
                    lVar.f28838j = true;
                    for (int i2 = 0; i2 < lVar.hp.countActions(); i2++) {
                        String action = lVar.hp.getAction(i2);
                        ArrayList<l> arrayList = this.mActions.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                l lVar2 = arrayList.get(size2);
                                if (lVar2.f28839l == pluginBroadcastReceiver) {
                                    lVar2.f28838j = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.mActions.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
