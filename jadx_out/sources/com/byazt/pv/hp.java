package com.byazt.pv;

import android.util.Pair;
import android.util.SparseArray;
import com.byazt.xi.jx;
import com.byazt.zu.a;
import com.byazt.zu.j;
import com.byazt.zu.w;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.mediation.bridge.MediationAdClassLoader;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1284, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    @com.byazt.kj.hp(hp = {0, 1, 1284, 170})
    /* renamed from: com.byazt.pv.hp$hp, reason: collision with other inner class name */
    public static class C0345hp implements TTAdNative {
        public final hp hp;

        public C0345hp(hp hpVar) {
            this.hp = hpVar;
        }

        private ValueSet hp(AdSlot adSlot) {
            jx jxVarHp = jx.hp(com.byazt.ta.l.hp(adSlot));
            jxVarHp.hp(8302, MediationAdClassLoader.getInstance());
            return jxVarHp.l();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadBannerExpressAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            try {
                this.hp.q(hp(adSlot), new w(nativeExpressAdListener));
            } catch (Exception e2) {
                if (nativeExpressAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    nativeExpressAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadDrawFeedAd(AdSlot adSlot, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
            try {
                this.hp.jx(hp(adSlot), new com.byazt.zu.hp(drawFeedAdListener));
            } catch (Exception e2) {
                if (drawFeedAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    drawFeedAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadExpressDrawFeedAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            try {
                this.hp.s(hp(adSlot), new w(nativeExpressAdListener));
            } catch (Exception e2) {
                if (nativeExpressAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    nativeExpressAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFeedAd(AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
            try {
                this.hp.hp(hp(adSlot), new com.byazt.zu.l(feedAdListener));
            } catch (Exception e2) {
                if (feedAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    feedAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFullScreenVideoAd(AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
            try {
                this.hp.a(hp(adSlot), new com.byazt.zu.jx(fullScreenVideoAdListener));
            } catch (Exception e2) {
                if (fullScreenVideoAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    fullScreenVideoAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeAd(AdSlot adSlot, TTAdNative.NativeAdListener nativeAdListener) {
            try {
                this.hp.j(hp(adSlot), new j(nativeAdListener));
            } catch (Exception e2) {
                if (nativeAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    nativeAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeExpressAd(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            try {
                this.hp.eb(hp(adSlot), new w(nativeExpressAdListener));
            } catch (Exception e2) {
                if (nativeExpressAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    nativeExpressAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadRewardVideoAd(AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
            try {
                this.hp.w(hp(adSlot), new a(rewardVideoAdListener));
            } catch (Exception e2) {
                if (rewardVideoAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    rewardVideoAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadSplashAd(AdSlot adSlot, TTAdNative.CSJSplashAdListener cSJSplashAdListener, int i2) {
            try {
                this.hp.hp(hp(adSlot), new l(cSJSplashAdListener), i2);
            } catch (Exception e2) {
                if (cSJSplashAdListener != null) {
                    final Pair<Integer, String> pairHp = this.hp.hp(e2);
                    cSJSplashAdListener.onSplashLoadFail(new CSJAdError() { // from class: com.byazt.pv.hp.hp.1
                        @Override // com.bytedance.sdk.openadsdk.CSJAdError
                        public int getCode() {
                            return ((Integer) pairHp.first).intValue();
                        }

                        @Override // com.bytedance.sdk.openadsdk.CSJAdError
                        public String getMsg() {
                            return (String) pairHp.second;
                        }
                    });
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadStream(AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
            try {
                this.hp.l(hp(adSlot), new com.byazt.zu.l(feedAdListener));
            } catch (Exception e2) {
                if (feedAdListener != null) {
                    Pair<Integer, String> pairHp = this.hp.hp(e2);
                    feedAdListener.onError(((Integer) pairHp.first).intValue(), (String) pairHp.second);
                }
            }
        }
    }

    public abstract void a(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void eb(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract Pair<Integer, String> hp(Exception exc);

    public TTAdNative hp() {
        return new C0345hp(this);
    }

    public abstract void hp(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void hp(ValueSet valueSet, Function<SparseArray<Object>, Object> function, int i2);

    public abstract void j(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void jx(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void l(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void q(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void s(ValueSet valueSet, Function<SparseArray<Object>, Object> function);

    public abstract void w(ValueSet valueSet, Function<SparseArray<Object>, Object> function);
}
