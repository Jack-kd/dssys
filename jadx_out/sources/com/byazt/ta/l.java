package com.byazt.ta;

import android.util.SparseArray;
import com.byazt.fl.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import java.util.function.Function;
import java.util.function.Supplier;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS, 34})
/* loaded from: classes3.dex */
public class l {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS, 123})
    public static class hp {
        public Function<SparseArray<Object>, Object> hp;

        public hp(Function<SparseArray<Object>, Object> function) {
            this.hp = function;
        }

        public IMediationAdSlot hp() {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 8260031);
            Object objApply = this.hp.apply(sparseArray);
            if (objApply instanceof IMediationAdSlot) {
                return (IMediationAdSlot) objApply;
            }
            return null;
        }
    }

    public static final SparseArray<Object> hp(final AdSlot adSlot) {
        if (adSlot == null) {
            return new SparseArray<>();
        }
        com.byazt.xi.jx jxVarHp = com.byazt.xi.jx.hp();
        jxVarHp.hp(260001, adSlot.getAdId());
        jxVarHp.hp(260002, adSlot.getCreativeId());
        jxVarHp.hp(260003, adSlot.getExt());
        jxVarHp.hp(260004, adSlot.getCodeId());
        jxVarHp.hp(260005, adSlot.isAutoPlay());
        jxVarHp.hp(260006, adSlot.getImgAcceptedWidth());
        jxVarHp.hp(260007, adSlot.getImgAcceptedHeight());
        jxVarHp.hp(260008, adSlot.getExpressViewAcceptedWidth());
        jxVarHp.hp(260009, adSlot.getExpressViewAcceptedHeight());
        jxVarHp.hp(260010, adSlot.isSupportDeepLink());
        jxVarHp.hp(260011, adSlot.isSupportRenderConrol());
        jxVarHp.hp(2600012, adSlot.getAdCount());
        jxVarHp.hp(260013, adSlot.getMediaExtra());
        jxVarHp.hp(260014, adSlot.getUserID());
        jxVarHp.hp(260015, adSlot.getOrientation());
        jxVarHp.hp(260016, adSlot.getNativeAdType());
        jxVarHp.hp(260017, adSlot.getExternalABVid());
        jxVarHp.hp(260018, adSlot.getAdloadSeq());
        jxVarHp.hp(260019, adSlot.getPrimeRit());
        jxVarHp.hp(260020, adSlot.getAdType());
        jxVarHp.hp(260021, adSlot.getBidAdm());
        jxVarHp.hp(260022, adSlot.getUserData());
        jxVarHp.hp(260023, hp(adSlot.getAdLoadType()));
        jxVarHp.hp(260024, new Supplier<String>() { // from class: com.byazt.ta.l.1
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public String get() {
                return adSlot.getRewardName();
            }
        });
        jxVarHp.hp(260025, new Supplier<Integer>() { // from class: com.byazt.ta.l.2
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(adSlot.getRewardAmount());
            }
        });
        jxVarHp.hp(260026, new Supplier<Boolean>() { // from class: com.byazt.ta.l.3
            @Override // java.util.function.Supplier
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(adSlot.isSupportIconStyle());
            }
        });
        if (adSlot.getMediationAdSlot() != null) {
            jxVarHp.hp(8260028, new com.byazt.ja.hp(adSlot.getMediationAdSlot()));
        }
        return jxVarHp.l().sparseArray();
    }

    public static AdSlot hp(SparseArray<Object> sparseArray) {
        AdSlot.Builder builder = new AdSlot.Builder();
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        if (valueSetL != null) {
            builder.setAdId(valueSetL.stringValue(260001)).setCreativeId(valueSetL.stringValue(260002)).setExt(valueSetL.stringValue(260003)).setCodeId(valueSetL.stringValue(260004)).setIsAutoPlay(valueSetL.booleanValue(260005)).setImageAcceptedSize(valueSetL.intValue(260006), valueSetL.intValue(260007)).setExpressViewAcceptedSize(valueSetL.floatValue(260008), valueSetL.floatValue(260009)).setSupportDeepLink(valueSetL.booleanValue(260010)).setAdCount(valueSetL.intValue(2600012)).setMediaExtra(valueSetL.stringValue(260013)).setUserID(valueSetL.stringValue(260014)).setExternalABVid((int[]) valueSetL.objectValue(260017, int[].class)).setAdloadSeq(valueSetL.intValue(260018)).setPrimeRit(valueSetL.stringValue(260019)).setAdType(valueSetL.intValue(260020)).withBid(valueSetL.stringValue(260021)).setUserData(valueSetL.stringValue(260022)).setAdLoadType(hp(valueSetL.intValue(260023))).setMediationAdSlot(new hp(v.hp(valueSetL.objectValue(8260028, Object.class))).hp()).setOrientation(valueSetL.intValue(260015)).setRewardName((String) valueSetL.objectValue(260024, String.class)).setRewardAmount(valueSetL.intValue(260025));
            if (valueSetL.booleanValue(260011)) {
                builder.supportRenderControl();
            }
        }
        return builder.build();
    }

    private static Integer hp(TTAdLoadType tTAdLoadType) {
        if (tTAdLoadType == null) {
            return null;
        }
        if (tTAdLoadType == TTAdLoadType.UNKNOWN) {
            return -1;
        }
        if (tTAdLoadType == TTAdLoadType.LOAD) {
            return 3;
        }
        return tTAdLoadType == TTAdLoadType.PRELOAD ? 1 : null;
    }

    private static TTAdLoadType hp(int i2) {
        if (i2 == 3) {
            return TTAdLoadType.LOAD;
        }
        if (i2 == 1) {
            return TTAdLoadType.PRELOAD;
        }
        return TTAdLoadType.UNKNOWN;
    }
}
