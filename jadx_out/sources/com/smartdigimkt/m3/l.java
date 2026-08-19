package com.smartdigimkt.m3;

/* loaded from: classes5.dex */
public final class l extends e {

    /* renamed from: Z1, reason: collision with root package name */
    public int f42061Z1;

    /* renamed from: a2, reason: collision with root package name */
    public int f42062a2;

    /* renamed from: b2, reason: collision with root package name */
    public int f42063b2;

    /* JADX WARN: Removed duplicated region for block: B:179:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04ac A[Catch: all -> 0x005c, TryCatch #10 {all -> 0x005c, blocks: (B:5:0x002b, B:11:0x0045, B:13:0x0055, B:16:0x005f, B:24:0x0072, B:30:0x0082, B:45:0x00bc, B:52:0x00d4, B:54:0x0140, B:55:0x0143, B:57:0x0149, B:58:0x014c, B:60:0x0152, B:61:0x0158, B:63:0x015e, B:64:0x0164, B:66:0x016a, B:67:0x0170, B:69:0x0176, B:70:0x017c, B:72:0x0182, B:73:0x0188, B:75:0x018e, B:76:0x0194, B:78:0x019c, B:79:0x01a4, B:81:0x01ac, B:82:0x01b4, B:84:0x01bc, B:85:0x01c4, B:87:0x01cc, B:89:0x01d8, B:91:0x01e0, B:92:0x01e8, B:94:0x01f0, B:95:0x01f8, B:97:0x0200, B:99:0x020c, B:101:0x0214, B:103:0x0220, B:105:0x0231, B:107:0x023e, B:109:0x0246, B:111:0x0252, B:113:0x025a, B:115:0x0266, B:117:0x026e, B:119:0x027a, B:121:0x0282, B:123:0x028f, B:125:0x0297, B:127:0x02a2, B:129:0x02aa, B:131:0x02b7, B:133:0x02bf, B:137:0x02cb, B:139:0x02d1, B:141:0x02d9, B:145:0x02e5, B:147:0x02ec, B:151:0x0302, B:155:0x030f, B:159:0x031c, B:163:0x03dd, B:177:0x048c, B:181:0x04a5, B:183:0x04ac, B:184:0x04ae, B:188:0x04da, B:196:0x04f1, B:200:0x0544, B:204:0x059f, B:214:0x066e, B:218:0x06ad, B:176:0x0483, B:146:0x02e9, B:138:0x02ce, B:130:0x02b4, B:126:0x02a0, B:122:0x028c, B:118:0x0277, B:114:0x0263, B:110:0x024f, B:106:0x023a, B:102:0x021d, B:98:0x0209, B:88:0x01d5), top: B:292:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x04cc A[Catch: all -> 0x04da, TRY_LEAVE, TryCatch #7 {all -> 0x04da, blocks: (B:185:0x04c0, B:187:0x04cc), top: B:286:0x04c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x051b A[Catch: all -> 0x0544, TRY_LEAVE, TryCatch #1 {all -> 0x0544, blocks: (B:197:0x050f, B:199:0x051b), top: B:276:0x050f }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x056d A[Catch: all -> 0x059f, TRY_LEAVE, TryCatch #12 {all -> 0x059f, blocks: (B:201:0x0561, B:203:0x056d), top: B:296:0x0561 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0661 A[Catch: all -> 0x066e, LOOP:2: B:210:0x065b->B:212:0x0661, LOOP_END, TryCatch #5 {all -> 0x066e, blocks: (B:205:0x0647, B:207:0x0654, B:210:0x065b, B:212:0x0661, B:213:0x066b), top: B:283:0x0647 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0692 A[Catch: all -> 0x06ad, TRY_LEAVE, TryCatch #4 {all -> 0x06ad, blocks: (B:215:0x068a, B:217:0x0692), top: B:281:0x068a }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x074e A[Catch: all -> 0x081c, TryCatch #8 {all -> 0x081c, blocks: (B:219:0x0746, B:221:0x074e, B:223:0x0760, B:224:0x0769, B:226:0x0771, B:227:0x077b, B:229:0x0783, B:239:0x07b5, B:238:0x07ac, B:240:0x07b7, B:242:0x07bf, B:243:0x07c7, B:245:0x07cf, B:246:0x07d7, B:248:0x07df, B:249:0x07e9, B:230:0x0788, B:233:0x0791, B:235:0x0797, B:236:0x07a5), top: B:288:0x0746, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0824 A[Catch: all -> 0x0865, TryCatch #2 {all -> 0x0865, blocks: (B:250:0x081c, B:252:0x0824, B:254:0x083c, B:260:0x085e, B:256:0x0847, B:258:0x084f, B:259:0x0856), top: B:278:0x081c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.smartdigimkt.m3.l a(org.json.JSONObject r19) {
        /*
            Method dump skipped, instructions count: 2150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.m3.l.a(org.json.JSONObject):com.smartdigimkt.m3.l");
    }

    public final void M(int i2) {
        this.f42061Z1 = i2;
    }

    public final void N(int i2) {
        this.f42062a2 = i2;
    }

    public final void O(int i2) {
        this.f42063b2 = i2;
    }
}
