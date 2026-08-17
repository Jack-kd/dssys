package com.czhj.devicehelper.msaoaId;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static InterfaceC0453a f29198a;

    /* renamed from: b, reason: collision with root package name */
    private static String f29199b;

    /* renamed from: c, reason: collision with root package name */
    private static String f29200c;

    /* renamed from: d, reason: collision with root package name */
    private static Class<?> f29201d;

    /* renamed from: e, reason: collision with root package name */
    private static Class<?> f29202e;

    /* renamed from: f, reason: collision with root package name */
    private static Class<?> f29203f;

    /* renamed from: g, reason: collision with root package name */
    private static Class<?> f29204g;

    /* renamed from: h, reason: collision with root package name */
    private static String f29205h;

    /* renamed from: i, reason: collision with root package name */
    private static final List<String> f29206i = new LinkedList<String>() { // from class: com.czhj.devicehelper.msaoaId.a.1
        {
            add("00000000-0000-0000-0000-000000000000");
            add("00000000000000000000000000000000");
        }
    };

    /* renamed from: j, reason: collision with root package name */
    private static final List<String> f29207j = new LinkedList<String>() { // from class: com.czhj.devicehelper.msaoaId.a.2
        {
            add("msaoaidsec");
            add("nllvm1632808251147706677");
            add("nllvm1630571663641560568");
            add("nllvm1623827671");
        }
    };

    /* renamed from: com.czhj.devicehelper.msaoaId.a$a, reason: collision with other inner class name */
    public interface InterfaceC0453a {
        void a(String str);
    }

    public static class b implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if ("OnSupport".equalsIgnoreCase(method.getName())) {
                    Method declaredMethod = a.f29202e.getDeclaredMethod("getOAID", null);
                    String unused = a.f29200c = (String) (objArr.length == 1 ? declaredMethod.invoke(objArr[0], null) : declaredMethod.invoke(objArr[1], null));
                    if (a.f29198a != null) {
                        a.f29198a.a(a.f29200c);
                    }
                    SigmobLog.e("MdidSdkHelper oaid:" + a.f29200c);
                }
            } catch (Throwable unused2) {
                if (a.f29198a != null) {
                    a.f29198a.a(a.f29200c);
                }
            }
            return null;
        }
    }

    static {
        e();
    }

    private static String d(Context context) throws IOException {
        InputStream inputStreamOpen;
        try {
            String str = context.getPackageName() + ".cert.pem";
            AssetManager assets = context.getAssets();
            if (TextUtils.isEmpty(f29205h)) {
                inputStreamOpen = assets.open(str);
            } else {
                try {
                    inputStreamOpen = assets.open(f29205h);
                } catch (IOException unused) {
                }
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return sb.toString();
                }
                sb.append(line);
                sb.append('\n');
            }
        } catch (IOException unused2) {
            SigmobLog.d("loadPemFromAssetFile failed");
            return "";
        }
    }

    private static void e() {
        Iterator<String> it = f29207j.iterator();
        while (it.hasNext()) {
            try {
                System.loadLibrary(it.next());
                return;
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(Context context) {
        InterfaceC0453a interfaceC0453a;
        try {
            d();
            if (context == null || f29204g == null || f29201d == null || f29202e == null) {
                SigmobLog.e("OAID 读取类创建失败");
                interfaceC0453a = f29198a;
                if (interfaceC0453a == null) {
                    return;
                }
            } else if (TextUtils.isEmpty(f29200c)) {
                b(context);
                return;
            } else {
                interfaceC0453a = f29198a;
                if (interfaceC0453a == null) {
                    return;
                }
            }
            interfaceC0453a.a(f29200c);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            InterfaceC0453a interfaceC0453a2 = f29198a;
            if (interfaceC0453a2 != null) {
                interfaceC0453a2.a(f29200c);
            }
        }
    }

    private static void b(Context context) {
        InterfaceC0453a interfaceC0453a;
        try {
            c(context);
            try {
                Class<?> cls = f29203f;
                if (cls != null && cls.getField("classLoader").get(f29203f) == null) {
                    f29203f.getDeclaredMethod("InitEntry", Context.class).invoke(f29203f, context);
                }
            } catch (Exception unused) {
            }
            int iIntValue = ((Integer) f29204g.getDeclaredMethod("InitSdk", Context.class, Boolean.TYPE, f29201d).invoke(null, context, Boolean.TRUE, Proxy.newProxyInstance(context.getClassLoader(), new Class[]{f29201d}, new b()))).intValue();
            SigmobLog.e("MdidSdkHelper ErrorCode : " + iIntValue);
            if (iIntValue == 1008614 || iIntValue == 1008610 || (interfaceC0453a = f29198a) == null) {
                return;
            }
            interfaceC0453a.a(f29200c);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            InterfaceC0453a interfaceC0453a2 = f29198a;
            if (interfaceC0453a2 != null) {
                interfaceC0453a2.a(f29200c);
            }
        }
    }

    private static void d() {
        try {
            f29204g = MdidSdkHelper.class;
            try {
                try {
                    try {
                        f29201d = IIdentifierListener.class;
                        f29202e = IdSupplier.class;
                    } catch (Exception unused) {
                        f29201d = Class.forName("com.bun.supplier.IIdentifierListener");
                        f29202e = Class.forName("com.bun.supplier.IdSupplier");
                        f29203f = Class.forName("com.bun.miitmdid.core.JLibrary");
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                f29201d = Class.forName("com.bun.miitmdid.core.IIdentifierListener");
                f29202e = Class.forName("com.bun.miitmdid.supplier.IdSupplier");
                f29203f = Class.forName("com.bun.miitmdid.core.JLibrary");
            }
        } catch (ClassNotFoundException e2) {
            SigmobLog.e(e2.getMessage());
        }
    }

    public static void a(Context context, InterfaceC0453a interfaceC0453a) {
        f29198a = interfaceC0453a;
        a(context);
    }

    public static void b(String str) {
        f29205h = str;
    }

    private static void c(Context context) {
        try {
            String strD = !TextUtils.isEmpty(f29199b) ? f29199b : d(context);
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            f29204g.getDeclaredMethod("InitCert", Context.class, String.class).invoke(null, context, strD);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public static void a(String str) {
        f29199b = str;
    }
}
