package com.meishu.sdk.core.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.R;
import com.meishu.sdk.activity.MeishuWebviewActivity;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.domain.LayoutBean;
import com.meishu.sdk.core.utils.DownloadDialogBean;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.ms.c;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class DownloadView {
    public static final String CLICK_DOWNLOAD_INFO_TYPE_DESCRIBE = "describe";
    public static final String CLICK_DOWNLOAD_INFO_TYPE_PERMISSION = "permission";
    public static final String CLICK_DOWNLOAD_INFO_TYPE_PRIVACY = "privacy";
    private static final String TAG = "DownloadView";

    public static class SafeLinkMovementMethod extends LinkMovementMethod {
        private static final SafeLinkMovementMethod INSTANCE = new SafeLinkMovementMethod();

        private SafeLinkMovementMethod() {
        }

        public static MovementMethod getInstance() {
            return INSTANCE;
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1 || actionMasked == 0) {
                int scrollX = textView.getScrollX() + (((int) motionEvent.getX()) - textView.getTotalPaddingLeft());
                int scrollY = textView.getScrollY() + (((int) motionEvent.getY()) - textView.getTotalPaddingTop());
                Layout layout = textView.getLayout();
                if (scrollX > layout.getLineRight(layout.getLineForVertical(scrollY))) {
                    Selection.removeSelection(spannable);
                    return false;
                }
            }
            return super.onTouchEvent(textView, spannable, motionEvent);
        }
    }

    public static void bindClickableDownloadInfo(final TextView textView, final DownloadDialogBean downloadDialogBean) {
        if (textView == null || downloadDialogBean == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        final Context context = textView.getContext();
        if (!TextUtils.isEmpty(downloadDialogBean.getApp_name())) {
            spannableStringBuilder.append((CharSequence) "应用名称：").append((CharSequence) downloadDialogBean.getApp_name()).append((CharSequence) " |");
        }
        if (!TextUtils.isEmpty(downloadDialogBean.getApp_ver())) {
            spannableStringBuilder.append((CharSequence) " 应用版本：").append((CharSequence) downloadDialogBean.getApp_ver()).append((CharSequence) " |");
        }
        if (!TextUtils.isEmpty(downloadDialogBean.getApp_size())) {
            spannableStringBuilder.append((CharSequence) " 应用大小：").append((CharSequence) downloadDialogBean.getApp_size()).append((CharSequence) " |");
        }
        if (!TextUtils.isEmpty(downloadDialogBean.getDeveloper())) {
            spannableStringBuilder.append((CharSequence) " 开发者：").append((CharSequence) downloadDialogBean.getDeveloper()).append((CharSequence) " |");
        }
        if (!TextUtils.isEmpty(downloadDialogBean.getApp_permission_url()) || downloadDialogBean.getApp_permission() != null) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) " 权限详情").append((CharSequence) " |");
            spannableStringBuilder.setSpan(new com.meishu.sdk.core.safe.a() { // from class: com.meishu.sdk.core.view.DownloadView.1
                @Override // com.meishu.sdk.core.safe.a
                public void safeOnClick(View view) {
                    DownloadView.openByType(downloadDialogBean, context, "permission");
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setColor(textView.getCurrentTextColor());
                    textPaint.setUnderlineText(true);
                }
            }, length, length + 5, 33);
        }
        if (!TextUtils.isEmpty(downloadDialogBean.getApp_private_agreement())) {
            int length2 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) " 隐私协议").append((CharSequence) " |");
            spannableStringBuilder.setSpan(new com.meishu.sdk.core.safe.a() { // from class: com.meishu.sdk.core.view.DownloadView.2
                @Override // com.meishu.sdk.core.safe.a
                public void safeOnClick(View view) {
                    DownloadView.openByType(downloadDialogBean, context, "privacy");
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setColor(textView.getCurrentTextColor());
                    textPaint.setUnderlineText(true);
                }
            }, length2, length2 + 5, 33);
        }
        if (!TextUtils.isEmpty(downloadDialogBean.getApp_intor_url()) || !TextUtils.isEmpty(downloadDialogBean.getApp_intro())) {
            int length3 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) " 功能介绍");
            spannableStringBuilder.setSpan(new com.meishu.sdk.core.safe.a() { // from class: com.meishu.sdk.core.view.DownloadView.3
                @Override // com.meishu.sdk.core.safe.a
                public void safeOnClick(View view) {
                    DownloadView.openByType(downloadDialogBean, context, DownloadView.CLICK_DOWNLOAD_INFO_TYPE_DESCRIBE);
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setColor(textView.getCurrentTextColor());
                    textPaint.setUnderlineText(true);
                }
            }, length3, length3 + 5, 33);
        }
        if (TextUtils.isEmpty(spannableStringBuilder)) {
            textView.setVisibility(8);
        }
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(SafeLinkMovementMethod.getInstance());
    }

    public static boolean isDownloadStyleAd(BaseAdSlot baseAdSlot) {
        return baseAdSlot != null && baseAdSlot.getInteractionType() == 1;
    }

    public static void openByType(c cVar, String str) {
        if (cVar == null) {
            return;
        }
        try {
            openByType((BaseAdSlot) cVar.a(), cVar.getContext(), str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static void openWebView(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Intent intent = new Intent(context, (Class<?>) MeishuWebviewActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            intent.putExtra(MeishuWebviewActivity.EXTRA_AD_DURL_KEY, new String[]{str});
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void setImage(@NotNull View view, int i2, String str) {
        try {
            ImageView imageView = (ImageView) view.findViewById(i2);
            if (imageView == null || TextUtils.isEmpty(str)) {
                return;
            }
            new i(imageView).a(str, false).d(0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void setText(@NotNull View view, int i2, String str) {
        try {
            TextView textView = (TextView) view.findViewById(i2);
            if (textView == null || TextUtils.isEmpty(str)) {
                return;
            }
            i iVar = new i(textView);
            View view2 = iVar.f31521d;
            if (view2 instanceof TextView) {
                ((TextView) view2).setText(str);
            }
            iVar.d(0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static DownloadDialogBean toBean(BaseAdSlot baseAdSlot) {
        DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
        downloadDialogBean.setApp_name(baseAdSlot.getAppName());
        downloadDialogBean.setApp_ver(baseAdSlot.getApp_ver());
        downloadDialogBean.setApp_size(baseAdSlot.getApp_size());
        downloadDialogBean.setDeveloper(baseAdSlot.getDeveloper());
        downloadDialogBean.setApp_feature(baseAdSlot.getApp_feature());
        downloadDialogBean.setApp_intro(baseAdSlot.getApp_intro());
        downloadDialogBean.setApp_privacy(baseAdSlot.getApp_privacy());
        downloadDialogBean.setPayment_types(baseAdSlot.getPayment_types());
        downloadDialogBean.setApp_permission(baseAdSlot.getApp_permission());
        downloadDialogBean.setApp_permission_url(baseAdSlot.getApp_permission_url());
        downloadDialogBean.setApp_intor_url(baseAdSlot.getApp_intor_url());
        downloadDialogBean.setApp_private_agreement(baseAdSlot.getPrivacy_agreement());
        return downloadDialogBean;
    }

    public void handleDownloadView(View view, BaseAdSlot baseAdSlot) {
        if (baseAdSlot == null || view == null) {
            return;
        }
        try {
            LogUtil.d(TAG, "handleDownloadView: interactionType=" + baseAdSlot.getInteractionType());
            if (baseAdSlot.getInteractionType() == 1) {
                TextView textView = (TextView) view.findViewById(R.id.ms_download_layer_textview);
                textView.setVisibility(0);
                bindClickableDownloadInfo(textView, toBean(baseAdSlot));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void handleFeedDownloadView(final View view, final BaseAdSlot baseAdSlot, LayoutBean.StyleBean styleBean) {
        if (baseAdSlot == null || view == null) {
            return;
        }
        try {
            LogUtil.d(TAG, "handleDownloadView: interactionType=" + baseAdSlot.getInteractionType());
            if (baseAdSlot.getInteractionType() == 1) {
                final TextView textView = (TextView) view.findViewById(R.id.ms_download_layer_textview);
                textView.setVisibility(0);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (styleBean != null) {
                    if (styleBean.getType() == 301 || styleBean.getType() == 401) {
                        if (!TextUtils.isEmpty(baseAdSlot.getDeveloper())) {
                            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) baseAdSlot.getDeveloper()).append((CharSequence) " |");
                        }
                    } else if (styleBean.getType() == 501) {
                        if (!TextUtils.isEmpty(baseAdSlot.getAppName())) {
                            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) baseAdSlot.getAppName()).append((CharSequence) " |");
                        }
                        if (!TextUtils.isEmpty(baseAdSlot.getDeveloper())) {
                            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) baseAdSlot.getDeveloper()).append((CharSequence) " |");
                        }
                    }
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_permission_url()) || baseAdSlot.getApp_permission() != null) {
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) " 权限").append((CharSequence) " |");
                    spannableStringBuilder.setSpan(new com.meishu.sdk.core.safe.a() { // from class: com.meishu.sdk.core.view.DownloadView.4
                        @Override // com.meishu.sdk.core.safe.a
                        public void safeOnClick(View view2) {
                            DownloadView.openByType(baseAdSlot, view.getContext(), "permission");
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            textPaint.setColor(textView.getCurrentTextColor());
                            textPaint.setUnderlineText(true);
                        }
                    }, length, length + 3, 33);
                }
                if (!TextUtils.isEmpty(baseAdSlot.getPrivacy_agreement())) {
                    int length2 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) " 隐私").append((CharSequence) " |");
                    spannableStringBuilder.setSpan(new com.meishu.sdk.core.safe.a() { // from class: com.meishu.sdk.core.view.DownloadView.5
                        @Override // com.meishu.sdk.core.safe.a
                        public void safeOnClick(View view2) {
                            DownloadView.openByType(baseAdSlot, view.getContext(), "privacy");
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            textPaint.setColor(textView.getCurrentTextColor());
                            textPaint.setUnderlineText(true);
                        }
                    }, length2, length2 + 3, 33);
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_intor_url()) || !TextUtils.isEmpty(baseAdSlot.getApp_intro())) {
                    int length3 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) " 功能");
                    spannableStringBuilder.setSpan(new com.meishu.sdk.core.safe.a() { // from class: com.meishu.sdk.core.view.DownloadView.6
                        @Override // com.meishu.sdk.core.safe.a
                        public void safeOnClick(View view2) {
                            DownloadView.openByType(baseAdSlot, view.getContext(), DownloadView.CLICK_DOWNLOAD_INFO_TYPE_DESCRIBE);
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            textPaint.setColor(textView.getCurrentTextColor());
                            textPaint.setUnderlineText(true);
                        }
                    }, length3, length3 + 3, 33);
                }
                String string = spannableStringBuilder.toString();
                if (TextUtils.isEmpty(string)) {
                    textView.setVisibility(8);
                } else {
                    if (string.endsWith("|")) {
                        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
                    }
                    if (string.startsWith(" ")) {
                        spannableStringBuilder.delete(0, 1);
                    }
                }
                textView.setText(spannableStringBuilder);
                textView.setMovementMethod(SafeLinkMovementMethod.getInstance());
                setImage(view, R.id.ms_download_layer_app_logo, baseAdSlot.getIcon());
                setText(view, R.id.ms_download_layer_app_name, baseAdSlot.getAppName());
                setText(view, R.id.ms_download_layer_app_developer, baseAdSlot.getDeveloper());
                new i(view).b(R.id.ms_download_layer_layout).d(0);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void openByType(BaseAdSlot baseAdSlot, Context context, String str) {
        openByType(baseAdSlot != null ? toBean(baseAdSlot) : null, context, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void openByType(com.meishu.sdk.core.utils.DownloadDialogBean r4, android.content.Context r5, java.lang.String r6) {
        /*
            if (r6 != 0) goto L4
            java.lang.String r6 = ""
        L4:
            int r0 = r6.hashCode()     // Catch: java.lang.Exception -> Lb4
            r1 = -517618225(0xffffffffe125c5cf, float:-1.911229E20)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L2e
            r1 = -314498168(0xffffffffed412388, float:-3.7358476E27)
            if (r0 == r1) goto L24
            r1 = 1018214091(0x3cb0b6cb, float:0.021571537)
            if (r0 == r1) goto L1a
            goto L38
        L1a:
            java.lang.String r0 = "describe"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Exception -> Lb4
            if (r6 == 0) goto L38
            r6 = r3
            goto L39
        L24:
            java.lang.String r0 = "privacy"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Exception -> Lb4
            if (r6 == 0) goto L38
            r6 = 0
            goto L39
        L2e:
            java.lang.String r0 = "permission"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Exception -> Lb4
            if (r6 == 0) goto L38
            r6 = r2
            goto L39
        L38:
            r6 = -1
        L39:
            if (r6 == 0) goto La8
            if (r6 == r3) goto L77
            if (r6 == r2) goto L40
            goto La7
        L40:
            if (r4 != 0) goto L43
            goto La7
        L43:
            java.lang.String r6 = r4.getApp_permission_url()     // Catch: java.lang.Exception -> Lb4
            boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> Lb4
            if (r6 != 0) goto L55
            java.lang.String r4 = r4.getApp_permission_url()     // Catch: java.lang.Exception -> Lb4
            openWebView(r5, r4)     // Catch: java.lang.Exception -> Lb4
            return
        L55:
            java.util.List r6 = r4.getApp_permission()     // Catch: java.lang.Exception -> Lb4
            if (r6 == 0) goto La7
            java.util.List r6 = r4.getApp_permission()     // Catch: java.lang.Exception -> Lb4
            boolean r6 = r6.isEmpty()     // Catch: java.lang.Exception -> Lb4
            if (r6 != 0) goto La7
            com.meishu.sdk.core.utils.DownloadDialogBean r6 = new com.meishu.sdk.core.utils.DownloadDialogBean     // Catch: java.lang.Exception -> Lb4
            r6.<init>()     // Catch: java.lang.Exception -> Lb4
            java.util.List r4 = r4.getApp_permission()     // Catch: java.lang.Exception -> Lb4
            r6.setApp_permission(r4)     // Catch: java.lang.Exception -> Lb4
            java.lang.String r4 = "权限详情"
            com.meishu.sdk.activity.MeishuDownloadDetailActivity.startActivity(r5, r6, r4)     // Catch: java.lang.Exception -> Lb4
            return
        L77:
            if (r4 != 0) goto L7a
            goto La7
        L7a:
            java.lang.String r6 = r4.getApp_intor_url()     // Catch: java.lang.Exception -> Lb4
            boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> Lb4
            if (r6 != 0) goto L8c
            java.lang.String r4 = r4.getApp_intor_url()     // Catch: java.lang.Exception -> Lb4
            openWebView(r5, r4)     // Catch: java.lang.Exception -> Lb4
            return
        L8c:
            java.lang.String r6 = r4.getApp_intro()     // Catch: java.lang.Exception -> Lb4
            boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> Lb4
            if (r6 != 0) goto La7
            com.meishu.sdk.core.utils.DownloadDialogBean r6 = new com.meishu.sdk.core.utils.DownloadDialogBean     // Catch: java.lang.Exception -> Lb4
            r6.<init>()     // Catch: java.lang.Exception -> Lb4
            java.lang.String r4 = r4.getApp_intro()     // Catch: java.lang.Exception -> Lb4
            r6.setApp_intro(r4)     // Catch: java.lang.Exception -> Lb4
            java.lang.String r4 = "功能介绍"
            com.meishu.sdk.activity.MeishuDownloadDetailActivity.startActivity(r5, r6, r4)     // Catch: java.lang.Exception -> Lb4
        La7:
            return
        La8:
            if (r4 == 0) goto Laf
            java.lang.String r4 = r4.getApp_private_agreement()     // Catch: java.lang.Exception -> Lb4
            goto Lb0
        Laf:
            r4 = 0
        Lb0:
            openWebView(r5, r4)     // Catch: java.lang.Exception -> Lb4
            return
        Lb4:
            r4 = move-exception
            r4.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.view.DownloadView.openByType(com.meishu.sdk.core.utils.DownloadDialogBean, android.content.Context, java.lang.String):void");
    }
}
