package com.kwad.components.ad.reward.retryReward;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.api.manager.RewardRetryTaskManager;
import com.kwad.sdk.api.model.KSAdInfoData;
import com.kwad.sdk.api.model.KSAdRewardRetryTaskResult;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.al;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.n;
import com.kwad.sdk.wrapper.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: classes4.dex */
public class RewardRetryTaskManagerImpl implements RewardRetryTaskManager {
    private static final String TAG = "RewardRetryTaskCacheManager";

    public enum RewardRetryErrorCode {
        REWARD_RETRY_TASK_EMPTY(1001, "激励二次深度转化任务参数为空"),
        REWARD_RETRY_TASK_LLSID_NULL(1002, "激励二次深度转化LLSID为空"),
        REWARD_RETRY_TASK_TIME_OUT(1003, "激励二次深度转化任务过期"),
        REWARD_RETRY_CONVERT_ERROR(1004, "激励二次深度转化失败");

        public int code;
        public String msg;

        RewardRetryErrorCode(int i2, String str) {
            this.code = i2;
            this.msg = str;
        }
    }

    private static Context getContext() {
        return ServiceProvider.Ud();
    }

    private void performConvert(@NonNull final Context context, final AdTemplate adTemplate, com.kwad.components.core.e.d.d dVar, final RewardRetryTaskManager.RetryRewardConvertResultListener retryRewardConvertResultListener) throws Exception {
        a.C0529a c0529aA = new a.C0529a(m.wrapContextIfNeed(context)).aJ(adTemplate).b(dVar).a(new a.b() { // from class: com.kwad.components.ad.reward.retryReward.RewardRetryTaskManagerImpl.1
            @Override // com.kwad.components.core.e.d.a.b
            public final void onAdClicked() {
                final com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
                aVar.aKI = 2;
                aVar.adTemplate = adTemplate;
                al.a aVar2 = new al.a();
                aVar2.H(n.getScreenWidth(context), n.getScreenHeight(context));
                aVar2.j((int) (Math.random() * 100.0d), (int) (Math.random() * 100.0d));
                aVar.e(aVar2);
                b.ac(adTemplate);
                retryRewardConvertResultListener.onSuccess();
                com.kwad.sdk.core.d.c.d(RewardRetryTaskManagerImpl.TAG, "开始上报track");
                GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.retryReward.RewardRetryTaskManagerImpl.1.1
                    @Override // com.kwad.sdk.utils.bi
                    public final void doTask() {
                        com.kwad.sdk.core.adlog.b.b(aVar);
                    }
                });
            }
        });
        b.ad(adTemplate);
        com.kwad.sdk.core.d.c.d(TAG, "开始转化");
        com.kwad.components.core.e.d.c.q(c0529aA);
    }

    @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager
    public void rewardAdRetryTaskUpdate(KSAdInfoData kSAdInfoData, RewardRetryTaskManager.RetryRewardConvertResultListener retryRewardConvertResultListener) throws Exception {
        com.kwad.sdk.core.d.c.d(TAG, "rewardAdRetryTaskUpdate 接口调用");
        if (kSAdInfoData == null) {
            RewardRetryErrorCode rewardRetryErrorCode = RewardRetryErrorCode.REWARD_RETRY_TASK_EMPTY;
            retryRewardConvertResultListener.onError(rewardRetryErrorCode.code, rewardRetryErrorCode.msg);
            return;
        }
        f fVarZ = d.kF().Z(kSAdInfoData.getLlsid());
        if (fVarZ == null || fVarZ.mAdTemplate == null) {
            RewardRetryErrorCode rewardRetryErrorCode2 = RewardRetryErrorCode.REWARD_RETRY_TASK_TIME_OUT;
            retryRewardConvertResultListener.onError(rewardRetryErrorCode2.code, rewardRetryErrorCode2.msg);
        } else {
            b.b(fVarZ);
            performConvert(getContext(), fVarZ.mAdTemplate, new com.kwad.components.core.e.d.d(fVarZ.mAdTemplate), retryRewardConvertResultListener);
        }
    }

    @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager
    public void setRetryRewardResultListener(List<KSAdInfoData> list, final RewardRetryTaskManager.RetryRewardResultListener retryRewardResultListener) {
        com.kwad.sdk.core.d.c.d(TAG, "setRetryRewardResultListener 接口调用  count " + list.size());
        if (list.isEmpty()) {
            RewardRetryErrorCode rewardRetryErrorCode = RewardRetryErrorCode.REWARD_RETRY_TASK_EMPTY;
            retryRewardResultListener.onError(rewardRetryErrorCode.code, rewardRetryErrorCode.msg);
            return;
        }
        b.kC();
        ArrayList arrayList = new ArrayList();
        Iterator<KSAdInfoData> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new KSAdRewardRetryTaskResult(it.next()));
        }
        g.a(arrayList, new RewardRetryTaskManager.RetryRewardResultListener() { // from class: com.kwad.components.ad.reward.retryReward.RewardRetryTaskManagerImpl.2
            @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager.RetryRewardResultListener
            public final void onError(int i2, String str) {
                RewardRetryTaskManager.RetryRewardResultListener retryRewardResultListener2 = retryRewardResultListener;
                if (retryRewardResultListener2 != null) {
                    retryRewardResultListener2.onError(i2, str);
                    b.i(i2, str);
                }
            }

            @Override // com.kwad.sdk.api.manager.RewardRetryTaskManager.RetryRewardResultListener
            public final void onSuccess(List<KSAdRewardRetryTaskResult> list2) {
                RewardRetryTaskManager.RetryRewardResultListener retryRewardResultListener2 = retryRewardResultListener;
                if (retryRewardResultListener2 != null) {
                    retryRewardResultListener2.onSuccess(list2);
                    b.kD();
                }
            }
        });
    }
}
