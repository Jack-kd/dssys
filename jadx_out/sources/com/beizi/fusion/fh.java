package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.g2;
import com.beizi.fusion.kd;
import com.sigmob.sdk.base.models.SigMacroCommon;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public class fh implements kd {

    /* renamed from: a, reason: collision with root package name */
    private g2.a f13870a;

    /* renamed from: b, reason: collision with root package name */
    private g2 f13871b;

    @Override // com.beizi.fusion.kd
    public String a(String str, String str2, kd.a aVar, boolean z2) {
        byte[] bArrA = a(str.getBytes(), str2, aVar, z2);
        if (bArrA != null) {
            return new String(bArrA);
        }
        if (z2) {
            return str;
        }
        return null;
    }

    @Override // com.beizi.fusion.kd
    public String b(String str, String str2, kd.a aVar, boolean z2) {
        byte[] bArrB = b(str.getBytes(), str2, aVar, z2);
        if (bArrB != null) {
            return new String(bArrB);
        }
        if (z2) {
            return str;
        }
        return null;
    }

    @Override // com.beizi.fusion.kd
    public byte[] a(byte[] bArr, String str, kd.a aVar, boolean z2) {
        LinkedList linkedList = new LinkedList();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(",")) {
                if (!linkedList.contains(str2)) {
                    linkedList.addFirst(str2);
                    if (aVar == kd.a.STEP_BY_STEP) {
                        linkedList.addFirst(SigMacroCommon.DEFAULT_XY);
                    }
                }
            }
        }
        if (aVar == kd.a.AS_LAST_OR_FIRST) {
            linkedList.addFirst(SigMacroCommon.DEFAULT_XY);
        }
        return a(bArr, linkedList);
    }

    @Override // com.beizi.fusion.kd
    public byte[] b(byte[] bArr, String str, kd.a aVar, boolean z2) {
        try {
            LinkedList linkedList = new LinkedList();
            if (!TextUtils.isEmpty(str)) {
                for (String str2 : str.split(",")) {
                    String strTrim = str2.trim();
                    if (!linkedList.contains(strTrim)) {
                        linkedList.addLast(strTrim);
                        if (aVar == kd.a.STEP_BY_STEP) {
                            linkedList.addLast(SigMacroCommon.DEFAULT_XY);
                        }
                    }
                }
            }
            if (aVar == kd.a.AS_LAST_OR_FIRST) {
                linkedList.addLast(SigMacroCommon.DEFAULT_XY);
            }
            return b(bArr, linkedList);
        } catch (Throwable th) {
            rm.a(th);
            return null;
        }
    }

    private byte[] a(byte[] bArr, LinkedList linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            oa oaVarA = a((String) it.next());
            if (oaVarA != null) {
                if (bArr == null) {
                    break;
                }
                bArr = oaVarA.a(bArr);
            }
        }
        return bArr;
    }

    private byte[] b(byte[] bArr, LinkedList linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            oa oaVarA = a((String) it.next());
            if (oaVarA != null) {
                if (bArr == null) {
                    break;
                }
                bArr = oaVarA.b(bArr);
            }
        }
        return bArr;
    }

    @Override // com.beizi.fusion.kd
    public void a(g2.a aVar) {
        this.f13870a = aVar;
    }

    private oa a(String str) {
        if ("1001".equals(str)) {
            if (this.f13871b == null) {
                this.f13871b = new g2(this.f13870a);
            }
            return this.f13871b;
        }
        if ("101".equals(str)) {
            return u8.a();
        }
        if (SigMacroCommon.DEFAULT_XY.equals(str)) {
            return g3.a();
        }
        return null;
    }
}
