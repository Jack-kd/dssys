package com.sigmob.sdk.mraid;

import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.mraid2.InterfaceC1332j;
import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class o extends AbstractC1322n {

    /* renamed from: c, reason: collision with root package name */
    protected am.a f37988c;

    /* renamed from: d, reason: collision with root package name */
    protected InterfaceC1332j f37989d;

    public o(String str) {
        super(str);
    }

    public am.a a(Context context) {
        return new am.a(context, new am.c() { // from class: com.sigmob.sdk.mraid.o.1
            @Override // com.sigmob.sdk.base.common.am.c
            public void a() {
                o oVar = o.this;
                InterfaceC1332j interfaceC1332j = oVar.f37989d;
                if (interfaceC1332j == null) {
                    return;
                }
                interfaceC1332j.a(oVar.f37986a, "twist", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(float f2) {
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(Map<String, Number> map) {
                if (map == null || o.this.f37989d == null) {
                    return;
                }
                HashMap<String, Object> map2 = new HashMap<>();
                Number number = map.get("turn_x");
                Number number2 = map.get("turn_y");
                Number number3 = map.get("turn_z");
                Number number4 = map.get("turn_time");
                map2.put("x", String.valueOf(number));
                map2.put("y", String.valueOf(number2));
                map2.put(bv.aD, String.valueOf(number3));
                map2.put("time", number4);
                o oVar = o.this;
                oVar.f37989d.a(oVar.f37986a, "twist", "end", map2);
            }
        }, am.d.WRING);
    }

    public abstract void a(float f2);

    public am.a b(Context context) {
        am.a aVar = new am.a(context, new am.c() { // from class: com.sigmob.sdk.mraid.o.2
            @Override // com.sigmob.sdk.base.common.am.c
            public void a() {
                o oVar = o.this;
                InterfaceC1332j interfaceC1332j = oVar.f37989d;
                if (interfaceC1332j == null) {
                    return;
                }
                interfaceC1332j.a(oVar.f37986a, "shake", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(float f2) {
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(Map<String, Number> map) {
                if (map == null || o.this.f37989d == null) {
                    return;
                }
                HashMap<String, Object> map2 = new HashMap<>();
                Number number = map.get("x_max_acc");
                Number number2 = map.get("y_max_acc");
                Number number3 = map.get("z_max_acc");
                map2.put("x", String.valueOf(number));
                map2.put("y", String.valueOf(number2));
                map2.put(bv.aD, String.valueOf(number3));
                o oVar = o.this;
                oVar.f37989d.a(oVar.f37986a, "shake", "end", map2);
            }
        }, am.d.SHAKE);
        aVar.a(1);
        return aVar;
    }

    public abstract void b(float f2);

    public am.a c(Context context) {
        am.a aVar = new am.a(context, new am.c() { // from class: com.sigmob.sdk.mraid.o.3
            @Override // com.sigmob.sdk.base.common.am.c
            public void a() {
                o oVar = o.this;
                InterfaceC1332j interfaceC1332j = oVar.f37989d;
                if (interfaceC1332j == null) {
                    return;
                }
                interfaceC1332j.a(oVar.f37986a, "swing", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(float f2) {
                o.this.a(f2);
                if (o.this.f37989d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                map.put("progress", Integer.valueOf((int) (f2 * 100.0f)));
                o oVar = o.this;
                oVar.f37989d.a(oVar.f37986a, "swing", "progress", map);
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(Map<String, Number> map) {
                if (map == null || o.this.f37989d == null) {
                    return;
                }
                HashMap<String, Object> map2 = new HashMap<>();
                Number number = map.get("x_max_acc");
                Number number2 = map.get("y_max_acc");
                Number number3 = map.get("z_max_acc");
                map2.put("x", String.valueOf(number));
                map2.put("y", String.valueOf(number2));
                map2.put(bv.aD, String.valueOf(number3));
                o oVar = o.this;
                oVar.f37989d.a(oVar.f37986a, "swing", "end", map2);
            }
        }, am.d.SWING);
        aVar.a(1);
        return aVar;
    }

    public am.a d(Context context) {
        am.a aVar = new am.a(context, new am.c() { // from class: com.sigmob.sdk.mraid.o.4
            @Override // com.sigmob.sdk.base.common.am.c
            public void a() {
                o oVar = o.this;
                InterfaceC1332j interfaceC1332j = oVar.f37989d;
                if (interfaceC1332j == null) {
                    return;
                }
                interfaceC1332j.a(oVar.f37986a, "slope", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(float f2) {
                o.this.b(f2);
                if (o.this.f37989d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                map.put("progress", Integer.valueOf((int) (f2 * 100.0f)));
                o oVar = o.this;
                oVar.f37989d.a(oVar.f37986a, "slope", "progress", map);
            }

            @Override // com.sigmob.sdk.base.common.am.c
            public void a(Map<String, Number> map) {
                if (map == null || o.this.f37989d == null) {
                    return;
                }
                HashMap<String, Object> map2 = new HashMap<>();
                Number number = map.get("turn_x");
                Number number2 = map.get("turn_y");
                Number number3 = map.get("turn_z");
                Number number4 = map.get("turn_time");
                map2.put("x", String.valueOf(number));
                map2.put("y", String.valueOf(number2));
                map2.put(bv.aD, String.valueOf(number3));
                map2.put("time", number4);
                o oVar = o.this;
                oVar.f37989d.a(oVar.f37986a, "slope", "end", map2);
            }
        }, am.d.SLOPE);
        aVar.a(1);
        return aVar;
    }

    public void e(int i2) {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.f(i2);
    }

    public void a(int i2) {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.c(i2);
    }

    public void b(int i2) {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.b(i2);
    }

    public void c(int i2) {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.d(i2);
    }

    public void d() {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }

    public void a(Context context, int i2) {
        if (i2 == 0) {
            this.f37988c = b(context);
            return;
        }
        if (i2 == 1) {
            this.f37988c = a(context);
            return;
        }
        if (i2 == 2) {
            this.f37988c = d(context);
        } else if (i2 != 3) {
            SigmobLog.e("Motion type is not support.");
        } else {
            this.f37988c = c(context);
        }
    }

    public void d(int i2) {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.e(i2);
    }

    public void a(Context context, String str) {
        str.getClass();
        switch (str) {
            case "shake":
                this.f37988c = b(context);
                break;
            case "slope":
                this.f37988c = d(context);
                break;
            case "swing":
                this.f37988c = c(context);
                break;
            case "twist":
                this.f37988c = a(context);
                break;
            default:
                SigmobLog.e("Motion type is not support.");
                break;
        }
    }

    public void a(InterfaceC1332j interfaceC1332j) {
        this.f37989d = interfaceC1332j;
    }
}
