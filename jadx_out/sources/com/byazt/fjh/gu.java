package com.byazt.fjh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends hp {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6 */
    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        com.byazt.kz.jx jxVar2;
        final com.byazt.kz.a aVarZy = jxVar.zy();
        com.byazt.nke.w wVarJ = aVarZy.j();
        jxVar.hp(false);
        try {
            com.byazt.nke.eb ebVarCall = wVarJ.call(new com.byazt.tf.jx(jxVar.getUrl(), jxVar.a(), jxVar.eb(), jxVar.u()));
            int iL = ebVarCall.l();
            jxVar.hp(ebVarCall.hp());
            jxVar2 = 200;
            try {
                if (ebVarCall.l() != 200) {
                    aVarZy.s();
                    String.valueOf(ebVarCall);
                    Object objJx = ebVarCall.jx();
                    hp(iL, ebVarCall.j(), objJx instanceof Throwable ? (Throwable) objJx : null, jxVar);
                    return;
                }
                final byte[] bArr = (byte[]) ebVarCall.jx();
                jxVar.hp(new l(bArr, ebVarCall));
                final String rawCacheKey = jxVar.getRawCacheKey();
                final com.byazt.nke.l lVarK = jxVar.k();
                if (lVarK.isRawMemoryCache()) {
                    aVarZy.l(jxVar.k()).hp(rawCacheKey, bArr);
                }
                final com.byazt.kz.jx jxVar3 = jxVar;
                try {
                    aVarZy.a().submit(new Runnable() { // from class: com.byazt.fjh.gu.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (lVarK.isDiskCache()) {
                                aVarZy.jx(jxVar3.k()).hp(rawCacheKey, bArr);
                            }
                        }
                    });
                } catch (Throwable th) {
                    th = th;
                    jxVar2 = jxVar3;
                    hp(1004, "net request failed!", th, jxVar2);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            jxVar2 = jxVar;
        }
    }

    private void hp(int i2, String str, Throwable th, com.byazt.kz.jx jxVar) {
        jxVar.hp(new s(i2, str, th));
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "net_request";
    }
}
