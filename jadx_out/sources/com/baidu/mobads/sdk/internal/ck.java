package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.baidu.mobads.sdk.internal.x;
import java.io.IOException;
import java.net.URL;
import java.util.Observable;
import java.util.Observer;

/* loaded from: classes2.dex */
public class ck implements Observer {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11321a = "APKParser";

    /* renamed from: g, reason: collision with root package name */
    private static final String f11322g = "__xadsdk_downloaded__version__";

    /* renamed from: h, reason: collision with root package name */
    private static final String f11323h = "version";

    /* renamed from: b, reason: collision with root package name */
    private Context f11324b;

    /* renamed from: c, reason: collision with root package name */
    private URL f11325c;

    /* renamed from: d, reason: collision with root package name */
    private String f11326d;

    /* renamed from: e, reason: collision with root package name */
    private final bz f11327e;

    /* renamed from: f, reason: collision with root package name */
    private a f11328f;

    /* renamed from: i, reason: collision with root package name */
    private SharedPreferences f11329i;

    /* renamed from: j, reason: collision with root package name */
    private SharedPreferences.OnSharedPreferenceChangeListener f11330j;

    public interface a {
        void a(bz bzVar);

        void b(bz bzVar);
    }

    public ck(Context context, URL url, bz bzVar, a aVar) {
        this.f11325c = null;
        this.f11326d = null;
        this.f11330j = new cl(this);
        this.f11325c = url;
        this.f11327e = bzVar;
        a(context, aVar);
    }

    private void a(Context context, a aVar) {
        this.f11324b = context;
        this.f11328f = aVar;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f11322g, 0);
        this.f11329i = sharedPreferences;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this.f11330j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        x xVar = (x) observable;
        if (xVar.l() == x.a.COMPLETED) {
            this.f11328f.a(new bz(this.f11327e, xVar.g(), Boolean.TRUE));
        }
        if (xVar.l() == x.a.ERROR) {
            this.f11328f.b(new bz(this.f11327e, xVar.g(), Boolean.FALSE));
        }
    }

    public void a(String str, String str2) throws IOException {
        am amVar = new am(this.f11324b, this.f11326d != null ? new URL(this.f11326d) : this.f11325c, str, str2, false);
        amVar.addObserver(this);
        amVar.a();
        SharedPreferences.Editor editorEdit = this.f11329i.edit();
        editorEdit.putString("version", this.f11327e.toString());
        editorEdit.apply();
    }

    public ck(Context context, String str, bz bzVar, a aVar) {
        this.f11325c = null;
        this.f11326d = null;
        this.f11330j = new cl(this);
        this.f11326d = str;
        this.f11327e = bzVar;
        a(context, aVar);
    }
}
