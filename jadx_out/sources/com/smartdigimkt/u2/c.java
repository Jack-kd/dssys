package com.smartdigimkt.u2;

import android.text.TextUtils;
import android.util.Xml;
import com.smartdigimkt.t2.l;
import com.smartdigimkt.v2.d0;
import com.smartdigimkt.v2.e;
import com.smartdigimkt.v2.e0;
import com.smartdigimkt.v2.g;
import com.smartdigimkt.v2.i;
import com.smartdigimkt.v2.s;
import com.smartdigimkt.v2.t;
import com.smartdigimkt.v2.u;
import com.smartdigimkt.v2.w;
import com.smartdigimkt.v2.z;
import java.io.StringReader;
import java.util.ArrayList;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes5.dex */
public final class c extends a {

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f44393f = {DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4, DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_3GP, "video/webm", "video/mkv"};

    /* renamed from: a, reason: collision with root package name */
    public volatile c f44394a;

    /* renamed from: e, reason: collision with root package name */
    public final z f44398e;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f44395b = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f44397d = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f44396c = new ArrayList();

    public c(String str) throws com.smartdigimkt.t2.c {
        int iIndexOf;
        String strSubstring = null;
        if (str != null) {
            try {
                if (!str.isEmpty() && (iIndexOf = str.indexOf("<")) > 0) {
                    strSubstring = str.substring(iIndexOf);
                }
            } catch (Throwable th) {
                throw new com.smartdigimkt.t2.c(th.getLocalizedMessage());
            }
        }
        str = strSubstring != null ? strSubstring : str;
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.nextTag();
        this.f44398e = new z(xmlPullParserNewPullParser);
    }

    public static ArrayList a(z zVar) {
        ArrayList arrayList;
        int i2 = 0;
        com.smartdigimkt.v2.a aVar = (com.smartdigimkt.v2.a) zVar.f44706a.get(0);
        s sVar = aVar.f44667a;
        if (sVar != null) {
            ArrayList arrayList2 = sVar.f44691e;
            if (arrayList2 == null) {
                return null;
            }
            int size = arrayList2.size();
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                t tVar = ((i) obj).f44684a;
                if (tVar != null) {
                    return tVar.f44695d;
                }
            }
            return null;
        }
        e0 e0Var = aVar.f44668b;
        if (e0Var == null || (arrayList = e0Var.f44676c) == null) {
            return null;
        }
        int size2 = arrayList.size();
        while (i2 < size2) {
            Object obj2 = arrayList.get(i2);
            i2++;
            i iVar = (i) obj2;
            t tVar2 = iVar.f44684a;
            if (tVar2 != null) {
                return tVar2.f44695d;
            }
            w wVar = iVar.f44686c;
            if (wVar != null) {
                return wVar.f44702b;
            }
        }
        return null;
    }

    public final String b(c cVar) {
        d0 d0Var;
        e eVar;
        if (this.f44394a != null) {
            return this.f44394a.b(this.f44394a);
        }
        int i2 = 0;
        ArrayList arrayList = ((com.smartdigimkt.v2.a) cVar.f44398e.f44706a.get(0)).f44667a.f44691e;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            t tVar = ((i) obj).f44684a;
            if (tVar != null && (d0Var = tVar.f44696e) != null && (eVar = d0Var.f44671a) != null) {
                return eVar.f44669a;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(com.smartdigimkt.u2.c r5) {
        /*
            r4 = this;
            com.smartdigimkt.v2.z r0 = r5.f44398e
            java.util.ArrayList r0 = r0.f44706a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.smartdigimkt.v2.a r0 = (com.smartdigimkt.v2.a) r0
            com.smartdigimkt.v2.s r2 = r0.f44667a
            if (r2 == 0) goto L2e
            java.util.ArrayList r0 = r2.f44691e
            if (r0 == 0) goto L51
            int r2 = r0.size()
        L17:
            if (r1 >= r2) goto L51
            java.lang.Object r3 = r0.get(r1)
            int r1 = r1 + 1
            com.smartdigimkt.v2.i r3 = (com.smartdigimkt.v2.i) r3
            com.smartdigimkt.v2.t r3 = r3.f44684a
            if (r3 == 0) goto L17
            com.smartdigimkt.v2.d0 r3 = r3.f44696e
            if (r3 == 0) goto L17
            java.util.ArrayList r3 = r3.f44672b
            if (r3 == 0) goto L17
            goto L52
        L2e:
            com.smartdigimkt.v2.e0 r0 = r0.f44668b
            if (r0 == 0) goto L51
            java.util.ArrayList r0 = r0.f44676c
            if (r0 == 0) goto L51
            int r2 = r0.size()
        L3a:
            if (r1 >= r2) goto L51
            java.lang.Object r3 = r0.get(r1)
            int r1 = r1 + 1
            com.smartdigimkt.v2.i r3 = (com.smartdigimkt.v2.i) r3
            com.smartdigimkt.v2.t r3 = r3.f44684a
            if (r3 == 0) goto L3a
            com.smartdigimkt.v2.d0 r3 = r3.f44696e
            if (r3 == 0) goto L3a
            java.util.ArrayList r3 = r3.f44672b
            if (r3 == 0) goto L3a
            goto L52
        L51:
            r3 = 0
        L52:
            if (r3 == 0) goto L59
            java.util.ArrayList r0 = r4.f44396c
            r0.addAll(r3)
        L59:
            com.smartdigimkt.u2.c r0 = r5.f44394a
            if (r0 == 0) goto L62
            com.smartdigimkt.u2.c r5 = r5.f44394a
            r4.c(r5)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.u2.c.c(com.smartdigimkt.u2.c):void");
    }

    public final void d(c cVar) {
        ArrayList arrayList;
        com.smartdigimkt.v2.a aVar = (com.smartdigimkt.v2.a) cVar.f44398e.f44706a.get(0);
        s sVar = aVar.f44667a;
        ArrayList arrayList2 = null;
        if (sVar != null) {
            arrayList = sVar.f44690d;
        } else {
            e0 e0Var = aVar.f44668b;
            arrayList = e0Var != null ? e0Var.f44675b : null;
        }
        if (arrayList != null) {
            ArrayList arrayList3 = this.f44397d;
            com.smartdigimkt.v2.a aVar2 = (com.smartdigimkt.v2.a) cVar.f44398e.f44706a.get(0);
            s sVar2 = aVar2.f44667a;
            if (sVar2 != null) {
                arrayList2 = sVar2.f44690d;
            } else {
                e0 e0Var2 = aVar2.f44668b;
                if (e0Var2 != null) {
                    arrayList2 = e0Var2.f44675b;
                }
            }
            arrayList3.addAll(arrayList2);
        }
        if (cVar.f44394a != null) {
            d(cVar.f44394a);
        }
    }

    public final String e(c cVar) {
        s sVar;
        ArrayList arrayList;
        if (this.f44394a != null) {
            return this.f44394a.e(cVar);
        }
        int i2 = 0;
        com.smartdigimkt.v2.a aVar = (com.smartdigimkt.v2.a) cVar.f44398e.f44706a.get(0);
        if (aVar == null || (sVar = aVar.f44667a) == null || (arrayList = sVar.f44691e) == null) {
            return null;
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            t tVar = ((i) obj).f44684a;
            if (tVar != null) {
                return tVar.f44692a;
            }
        }
        return null;
    }

    public final String f(c cVar) {
        s sVar;
        ArrayList arrayList;
        if (this.f44394a != null) {
            return this.f44394a.f(cVar);
        }
        int i2 = 0;
        com.smartdigimkt.v2.a aVar = (com.smartdigimkt.v2.a) cVar.f44398e.f44706a.get(0);
        if (aVar == null || (sVar = aVar.f44667a) == null || (arrayList = sVar.f44691e) == null) {
            return null;
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            t tVar = ((i) obj).f44684a;
            if (tVar != null) {
                return tVar.f44693b.f44670a;
            }
        }
        return null;
    }

    public static Integer a(g gVar) {
        if (gVar == null) {
            return null;
        }
        if (gVar.f44681e != null) {
            return 1;
        }
        if (gVar.f44679c != null) {
            return 2;
        }
        return gVar.f44680d != null ? 3 : null;
    }

    public final String a(c cVar, int i2) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        if (this.f44394a != null) {
            this.f44394a.a(this.f44394a, i2);
            return null;
        }
        ArrayList arrayList3 = ((com.smartdigimkt.v2.a) cVar.f44398e.f44706a.get(0)).f44667a.f44691e;
        int size = arrayList3.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            Object obj = arrayList3.get(i3);
            i3++;
            t tVar = ((i) obj).f44684a;
            if (tVar != null && (arrayList = tVar.f44694c) != null) {
                int size2 = arrayList.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj2 = arrayList.get(i4);
                    i4++;
                    u uVar = (u) obj2;
                    String str = uVar.f44698b;
                    if (!TextUtils.isEmpty(str)) {
                        int i5 = 0;
                        while (true) {
                            String[] strArr = f44393f;
                            if (i5 >= 4) {
                                break;
                            }
                            if (str.equalsIgnoreCase(strArr[i5])) {
                                arrayList2.add(uVar);
                                break;
                            }
                            i5++;
                        }
                    }
                }
                if (arrayList2.size() != 0) {
                    int i6 = 0;
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        if (i6 >= arrayList2.size()) {
                            i6 = i8;
                            break;
                        }
                        u uVar2 = (u) arrayList2.get(i6);
                        int i9 = l.a(uVar2.f44699c) ? 0 : Integer.parseInt(uVar2.f44699c);
                        if (i9 == i2) {
                            break;
                        }
                        int iAbs = Math.abs(i2 - i9);
                        if (i7 == 0 || iAbs < i7) {
                            i8 = i6;
                            i7 = iAbs;
                        }
                        i6++;
                    }
                    return ((u) arrayList2.get(i6)).f44697a;
                }
            }
        }
        return null;
    }

    public final void a(c cVar) {
        if (a(cVar.f44398e) != null) {
            this.f44395b.addAll(a(cVar.f44398e));
        }
        if (cVar.f44394a != null) {
            a(cVar.f44394a);
        }
    }

    public static int a(g gVar, g gVar2) {
        if (gVar == null && gVar2 == null) {
            throw new IllegalArgumentException("No companions to compare");
        }
        if (gVar == null) {
            return 2;
        }
        if (gVar2 == null) {
            return 1;
        }
        Integer numA = a(gVar);
        Integer numA2 = a(gVar2);
        if (numA == null && numA2 == null) {
            throw new IllegalArgumentException("No companion resources to compare");
        }
        if (numA == null) {
            return 2;
        }
        if (numA2 == null || numA.intValue() < numA2.intValue()) {
            return 1;
        }
        if (numA.intValue() > numA2.intValue()) {
            return 2;
        }
        String str = gVar.f44677a;
        String str2 = gVar.f44678b;
        int i2 = (l.a(str) ? 0 : Integer.parseInt(str)) * (l.a(str2) ? 0 : Integer.parseInt(str2));
        String str3 = gVar2.f44677a;
        String str4 = gVar2.f44678b;
        int i3 = (l.a(str3) ? 0 : Integer.parseInt(str3)) * (l.a(str4) ? 0 : Integer.parseInt(str4));
        if (i2 < i3) {
            return 2;
        }
        return i2 > i3 ? 1 : 0;
    }
}
