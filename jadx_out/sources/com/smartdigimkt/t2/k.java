package com.smartdigimkt.t2;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class k {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f44264j = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Context f44265a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.b f44266b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f44267c;

    /* renamed from: e, reason: collision with root package name */
    public j f44269e;

    /* renamed from: f, reason: collision with root package name */
    public f f44270f;

    /* renamed from: g, reason: collision with root package name */
    public long f44271g;

    /* renamed from: i, reason: collision with root package name */
    public boolean f44273i = true;

    /* renamed from: d, reason: collision with root package name */
    public final g f44268d = new g(this);

    /* renamed from: h, reason: collision with root package name */
    public int f44272h = -1;

    public k(Context context, com.smartdigimkt.m3.b bVar, com.smartdigimkt.l3.a aVar) {
        this.f44265a = context;
        this.f44266b = bVar;
        this.f44267c = aVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(59:(8:322|13|(1:22)(1:19)|23|(1:30)(1:29)|31|(1:38)(1:37)|39)|(6:43|332|44|(2:46|(2:48|(4:50|(1:55)(1:67)|(1:(1:(2:71|(1:73)(1:74))(1:76))(1:77))(1:78)|75)(4:58|(1:60)(0)|(0)(0)|75))(4:61|(1:63)(0)|(0)(0)|75))(4:64|(1:66)(0)|(0)(0)|75)|293|(1:(4:296|(3:298|(1:300)|301)|302|369)(2:303|370))(1:368))|79|(1:81)(4:82|330|83|(1:88)(1:90))|312|91|92|318|93|94|95|320|98|99|326|100|101|102|104|105|324|106|107|(1:109)(4:111|(3:113|(2:117|362)(5:118|(9:314|121|122|316|123|124|(2:126|366)(1:365)|132|119)|363|133|361)|134)|360|135)|110|136|137|334|(1:179)(43:141|142|(2:144|(3:146|(1:149)|150)(1:151))(3:152|(1:154)|155)|156|(1:158)|159|(3:161|(2:163|(2:341|165)(1:166))|340)(1:167)|168|(1:172)|336|173|338|174|175|180|(1:182)|183|(1:185)|186|(1:188)|189|(1:191)|(1:193)|(1:195)|196|(1:198)|199|(3:201|(1:203)|(1:205))|206|(1:208)|209|(8:211|(3:213|(3:343|215|346)(1:345)|344)|342|216|217|328|218|219)|220|(8:222|(3:224|(3:347|226|351)(1:350)|349)|348|227|(1:234)(1:232)|233|235|236)|237|(1:239)|240|(6:242|(4:245|(3:356|247|359)(1:358)|357|243)|355|248|(4:250|251|252|354)(2:252|354)|288)|352|289|290|293|(0)(0))|178|180|(0)|183|(0)|186|(0)|189|(0)|(0)|(0)|196|(0)|199|(0)|206|(0)|209|(0)|220|(0)|237|(0)|240|(0)|352|289|290|293|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(66:322|13|(1:22)(1:19)|23|(1:30)(1:29)|31|(1:38)(1:37)|39|(6:43|332|44|(2:46|(2:48|(4:50|(1:55)(1:67)|(1:(1:(2:71|(1:73)(1:74))(1:76))(1:77))(1:78)|75)(4:58|(1:60)(0)|(0)(0)|75))(4:61|(1:63)(0)|(0)(0)|75))(4:64|(1:66)(0)|(0)(0)|75)|293|(1:(4:296|(3:298|(1:300)|301)|302|369)(2:303|370))(1:368))|79|(1:81)(4:82|330|83|(1:88)(1:90))|312|91|92|318|93|94|95|320|98|99|326|100|101|102|104|105|324|106|107|(1:109)(4:111|(3:113|(2:117|362)(5:118|(9:314|121|122|316|123|124|(2:126|366)(1:365)|132|119)|363|133|361)|134)|360|135)|110|136|137|334|(1:179)(43:141|142|(2:144|(3:146|(1:149)|150)(1:151))(3:152|(1:154)|155)|156|(1:158)|159|(3:161|(2:163|(2:341|165)(1:166))|340)(1:167)|168|(1:172)|336|173|338|174|175|180|(1:182)|183|(1:185)|186|(1:188)|189|(1:191)|(1:193)|(1:195)|196|(1:198)|199|(3:201|(1:203)|(1:205))|206|(1:208)|209|(8:211|(3:213|(3:343|215|346)(1:345)|344)|342|216|217|328|218|219)|220|(8:222|(3:224|(3:347|226|351)(1:350)|349)|348|227|(1:234)(1:232)|233|235|236)|237|(1:239)|240|(6:242|(4:245|(3:356|247|359)(1:358)|357|243)|355|248|(4:250|251|252|354)(2:252|354)|288)|352|289|290|293|(0)(0))|178|180|(0)|183|(0)|186|(0)|189|(0)|(0)|(0)|196|(0)|199|(0)|206|(0)|209|(0)|220|(0)|237|(0)|240|(0)|352|289|290|293|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b6, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r20 = "-3";
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x04cf, code lost:
    
        r20 = "-3";
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0189, code lost:
    
        r20 = "-3";
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x018e, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02f0 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x02fa A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0304 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x030c A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0312 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0318 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0322 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0331 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0343 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x034b A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0384 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x03c9 A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03df A[Catch: all -> 0x00d9, TryCatch #11 {all -> 0x00d9, blocks: (B:149:0x0259, B:156:0x027e, B:158:0x0282, B:159:0x0287, B:161:0x028b, B:163:0x0294, B:170:0x02bb, B:172:0x02c3, B:180:0x02ea, B:182:0x02f0, B:183:0x02f4, B:185:0x02fa, B:186:0x02fe, B:188:0x0304, B:191:0x030c, B:193:0x0312, B:195:0x0318, B:196:0x031c, B:198:0x0322, B:199:0x032b, B:201:0x0331, B:203:0x0337, B:205:0x033b, B:206:0x033d, B:208:0x0343, B:209:0x0347, B:211:0x034b, B:213:0x0359, B:215:0x0369, B:216:0x036f, B:219:0x0374, B:220:0x0380, B:222:0x0384, B:224:0x0392, B:226:0x03a2, B:227:0x03a8, B:229:0x03ac, B:236:0x03b7, B:237:0x03c3, B:239:0x03c9, B:240:0x03d5, B:242:0x03df, B:243:0x03ec, B:245:0x03f2, B:247:0x0408, B:248:0x040e, B:250:0x0414, B:251:0x0418, B:253:0x041e, B:256:0x0423, B:257:0x0430, B:260:0x0435, B:261:0x0442, B:264:0x0447, B:265:0x0454, B:268:0x0459, B:269:0x0466, B:272:0x046b, B:273:0x0478, B:276:0x047d, B:277:0x048a, B:280:0x048f, B:281:0x049d, B:284:0x04a2, B:285:0x04b0, B:151:0x0260, B:152:0x026a, B:154:0x0276), top: B:334:0x023b }] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:368:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0121 A[Catch: all -> 0x00d7, TryCatch #10 {all -> 0x00d7, blocks: (B:44:0x00b4, B:74:0x0105, B:76:0x010f, B:77:0x0118, B:78:0x0121, B:53:0x00cd, B:58:0x00dc, B:61:0x00e6, B:64:0x00f0, B:79:0x012a, B:91:0x0162, B:94:0x017f, B:98:0x018f, B:101:0x01ac, B:104:0x01b7, B:107:0x01c0, B:136:0x022f, B:139:0x023d, B:141:0x0243, B:111:0x01cd, B:113:0x01d6, B:115:0x01e6, B:119:0x01f8, B:121:0x01fe, B:123:0x0206, B:132:0x021c, B:131:0x0219, B:82:0x013b, B:83:0x014f, B:88:0x015b, B:86:0x0155), top: B:332:0x00b4, inners: #9 }] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.smartdigimkt.t2.k r26, com.smartdigimkt.u2.a[] r27, org.json.JSONArray r28) {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t2.k.a(com.smartdigimkt.t2.k, com.smartdigimkt.u2.a[], org.json.JSONArray):void");
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            char[] cArr = com.smartdigimkt.c5.k.f39779a;
            String strReplaceAll = (TextUtils.isEmpty(str) ? str : str.replaceAll("&lt;", "<").replaceAll("&gt;", ">").replaceAll("&amp;", "&").replaceAll("&quot;", "\"")).replaceAll("<!DOCTYPE html>", "");
            if (strReplaceAll.contains("<html")) {
                return strReplaceAll;
            }
            if (strReplaceAll.startsWith("<body")) {
                return "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"/><meta name=\"viewport\"content=\"width=device-width, initial-scale=1.0\"/><title>TopOn</title></head>" + strReplaceAll + "</html>";
            }
            return "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"/><meta name=\"viewport\"content=\"width=device-width, initial-scale=1.0\"/><title>TopOn</title></head><body>" + strReplaceAll + "</body></html>";
        } catch (Throwable unused) {
            return str;
        }
    }

    public static String[] a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return strArr2;
        }
        if (strArr2 == null || strArr2.length == 0) {
            return strArr;
        }
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }
}
