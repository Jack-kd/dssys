package com.smartdigimkt.q1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public MraidBaseWebView f42676a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f42677b = new ArrayList(Arrays.asList("open", "close", "unload", "useCustomClose", "expand"));

    public b() {
        new Handler(Looper.getMainLooper(), this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
