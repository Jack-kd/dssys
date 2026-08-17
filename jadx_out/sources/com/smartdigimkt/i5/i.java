package com.smartdigimkt.i5;

import com.anythink.core.bridge.a;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class i extends com.smartdigimkt.g5.c {
    public static com.smartdigimkt.a5.e a(String str, Map map) {
        com.smartdigimkt.a5.e eVarA = com.smartdigimkt.z4.m.a().a(str);
        if ((eVarA == null || eVarA.c()) && map != null && !map.isEmpty()) {
            Object obj = map.get(a.C0044a.f1721d);
            if (obj instanceof JSONObject) {
                eVarA = com.smartdigimkt.a5.e.b(str, (JSONObject) obj);
            }
        }
        if (eVarA == null) {
            return null;
        }
        com.smartdigimkt.z4.m.a().a(str, eVarA, null);
        return eVarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x012c  */
    @Override // com.smartdigimkt.g5.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(com.smartdigimkt.g5.a r14) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.i5.i.b(com.smartdigimkt.g5.a):boolean");
    }
}
