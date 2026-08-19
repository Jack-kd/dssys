package com.byazt.hs;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import com.byazt.fi.j;
import com.byazt.qa.a;
import com.byazt.qt.v;
import com.byazt.toc.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE, 28})
/* loaded from: classes2.dex */
public class hp extends v {
    public jl hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.mv.hp f20948l;

    public hp(jl jlVar) {
        this.hp = jlVar;
        hp();
    }

    @Override // com.byazt.qt.v
    public long getExpirationTimestamp() {
        return LocationRequestCompat.PASSIVE_INTERVAL;
    }

    @Override // com.byazt.qt.v
    public int getInteractionType() {
        jl jlVar = this.hp;
        if (jlVar != null) {
            return jlVar.u();
        }
        return -1;
    }

    @Override // com.byazt.qt.v
    public Map<String, Object> getMediaExtraInfo() {
        jl jlVar = this.hp;
        if (jlVar != null) {
            return jlVar.xs();
        }
        return null;
    }

    @Override // com.byazt.qt.v
    public a getMediationManager() {
        return new com.byazt.fi.hp(new l(this.hp));
    }

    @Override // com.byazt.qt.v
    public int getRewardVideoAdType() {
        return 0;
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        jl jlVar = this.hp;
        if (jlVar != null) {
            jlVar.hp(lVar);
        }
    }

    @Override // com.byazt.qt.v
    public void setDownloadListener(final com.byazt.gu.jx jxVar) {
        jl jlVar = this.hp;
        if (jlVar != null) {
            jlVar.hp(new com.byazt.voc.l() { // from class: com.byazt.hs.hp.2
                @Override // com.byazt.voc.l
                public void hp() {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp();
                    }
                }

                @Override // com.byazt.voc.l
                public void l() {
                }

                @Override // com.byazt.voc.l
                public void l(long j2, long j3, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.jx(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, long j3, int i2, int i3, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, long j3, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.l(j2, j3, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(long j2, @Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(j2, str, str2);
                    }
                }

                @Override // com.byazt.voc.l
                public void hp(@Nullable String str, @Nullable String str2) {
                    com.byazt.gu.jx jxVar2 = jxVar;
                    if (jxVar2 != null) {
                        jxVar2.hp(str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
    }

    @Override // com.byazt.qt.v
    public void setRewardAdInteractionListener(com.byazt.mv.hp hpVar) {
        this.f20948l = hpVar;
    }

    @Override // com.byazt.qt.v
    public void setRewardPlayAgainController(com.byazt.mv.l lVar) {
    }

    @Override // com.byazt.qt.v
    public void setRewardPlayAgainInteractionListener(com.byazt.mv.hp hpVar) {
    }

    @Override // com.byazt.qt.v
    public void showRewardVideoAd(Activity activity) {
        jl jlVar = this.hp;
        if (jlVar != null) {
            jlVar.hp(activity);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
    }

    private void hp() {
        jl jlVar = this.hp;
        if (jlVar == null) {
            return;
        }
        jlVar.hp(new com.byazt.jd.hp() { // from class: com.byazt.hs.hp.1
            @Override // com.byazt.jd.hp
            public void a() {
                if (hp.this.f20948l != null) {
                    hp.this.f20948l.w();
                }
            }

            @Override // com.byazt.jd.hp
            public void hp(com.byazt.dq.hp hpVar) {
            }

            @Override // com.byazt.jd.hp
            public void i_() {
                if (hp.this.f20948l != null) {
                    hp.this.f20948l.hp();
                }
            }

            @Override // com.byazt.jd.hp
            public void j() {
                if (hp.this.f20948l != null) {
                    hp.this.f20948l.jx();
                }
            }

            @Override // com.byazt.jd.hp
            public void j_() {
                if (hp.this.f20948l != null) {
                    hp.this.f20948l.l();
                }
            }

            @Override // com.byazt.jd.hp
            public void w() {
                if (hp.this.f20948l != null) {
                    hp.this.f20948l.j();
                }
            }

            @Override // com.byazt.jd.hp
            public void hp() {
                if (hp.this.f20948l != null) {
                    hp.this.f20948l.hp(null);
                }
            }

            @Override // com.byazt.jd.hp
            public void hp(com.byazt.ti.hp hpVar) {
                hp hpVar2 = hp.this;
                hpVar2.hp(hpVar, hpVar2.f20948l, "CSJMRewardAd normal");
            }
        });
    }

    @Override // com.byazt.qt.v
    public void showRewardVideoAd(Activity activity, Object obj, String str) {
        jl jlVar = this.hp;
        if (jlVar != null) {
            jlVar.hp(activity, obj, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ti.hp hpVar, com.byazt.mv.hp hpVar2, String str) {
        Bundle bundle;
        String str2;
        j.hp(hpVar, str);
        if (hpVar2 == null || hpVar == null) {
            return;
        }
        boolean zHp = hpVar.hp();
        float fL = hpVar.l();
        String strJx = hpVar.jx();
        Map<String, Object> mapJ = hpVar.j();
        if (mapJ == null) {
            mapJ = new HashMap<>();
        }
        Object obj = mapJ.get(MediationConstant.KEY_REWARD_TYPE);
        int iIntValue = 0;
        int iIntValue2 = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        Object obj2 = mapJ.get(MediationConstant.KEY_EXTRA_INFO);
        if (obj2 instanceof Bundle) {
            bundle = (Bundle) obj2;
        } else {
            bundle = new Bundle();
        }
        bundle.putString("reward_extra_key_reward_name", strJx);
        bundle.putFloat("reward_extra_key_reward_amount", fL);
        Object obj3 = mapJ.get(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY);
        if (obj3 instanceof Boolean) {
            bundle.putBoolean(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, ((Boolean) obj3).booleanValue());
        }
        Object obj4 = mapJ.get("transId");
        if (obj4 instanceof String) {
            bundle.putString("transId", (String) obj4);
        }
        Object obj5 = mapJ.get(MediationConstant.KEY_REASON);
        if (obj5 instanceof Integer) {
            bundle.putInt(MediationConstant.KEY_REASON, ((Integer) obj5).intValue());
        }
        Object obj6 = mapJ.get("gromoreExtra");
        if (obj6 instanceof String) {
            bundle.putString("gromoreExtra", (String) obj6);
        }
        Object obj7 = mapJ.get(MediationConstant.KEY_ERROR_CODE);
        if (obj7 instanceof Integer) {
            Integer num = (Integer) obj7;
            iIntValue = num.intValue();
            bundle.putInt(MediationConstant.KEY_ERROR_CODE, num.intValue());
        }
        Object obj8 = mapJ.get(MediationConstant.KEY_ERROR_MSG);
        if (obj8 instanceof String) {
            String str3 = (String) obj8;
            bundle.putString(MediationConstant.KEY_ERROR_MSG, str3);
            str2 = str3;
        } else {
            str2 = "";
        }
        Object obj9 = mapJ.get(MediationConstant.KEY_ADN_NAME);
        if (obj9 instanceof String) {
            bundle.putString(MediationConstant.KEY_ADN_NAME, (String) obj9);
        }
        Object obj10 = mapJ.get("ecpm");
        if (obj10 instanceof String) {
            bundle.putString("ecpm", (String) obj10);
        }
        Object obj11 = mapJ.get("reward_type");
        if (obj11 instanceof Integer) {
            bundle.putInt("reward_type", ((Integer) obj11).intValue());
        }
        hpVar2.hp(zHp, iIntValue2, bundle);
        if (com.byazt.fr.l.hp("6.4.0.0")) {
            hpVar2.hp(zHp, (int) fL, strJx != null ? strJx : "", iIntValue, str2);
        }
    }
}
