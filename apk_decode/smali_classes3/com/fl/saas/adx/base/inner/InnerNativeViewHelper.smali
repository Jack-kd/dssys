.class public Lcom/fl/saas/adx/base/inner/InnerNativeViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppPermissionUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getPermissonClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getFunctionClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getFunctionClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;->onClick()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getFunctionUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "\u529f\u80fd\u4ecb\u7ecd"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getPermissonClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getPermissonClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;->onClick()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppPermissionUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "\u6743\u9650\u8be6\u60c5"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static createAppInfoView(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)Landroid/widget/TextView;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->isNativeAppAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/fl/saas/adx/base/inner/ClickSpannable;

    invoke-direct {v2}, Lcom/fl/saas/adx/base/inner/ClickSpannable;-><init>()V

    const-string v3, " | "

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setSeparator(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setGenericColor(I)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e94\u7528\u540d\u79f0\uff1a"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setText([Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e94\u7528\u7248\u672c\uff1a"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setText([Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5f00\u53d1\u8005\uff1a"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setText([Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/c;

    invoke-direct {v3, p1}, Lcom/fl/saas/adx/base/inner/c;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)V

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->nextCondition(Lcom/fl/saas/b1;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/d;

    invoke-direct {v3, p1, p0}, Lcom/fl/saas/adx/base/inner/d;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;Landroid/content/Context;)V

    const-string v4, "\u6743\u9650\u8be6\u60c5 >"

    invoke-virtual {v2, v4, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setTextClick(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/e;

    invoke-direct {v3, p1}, Lcom/fl/saas/adx/base/inner/e;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)V

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->nextCondition(Lcom/fl/saas/b1;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/f;

    invoke-direct {v3, p1, p0}, Lcom/fl/saas/adx/base/inner/f;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;Landroid/content/Context;)V

    const-string v4, "\u9690\u79c1\u534f\u8bae >"

    invoke-virtual {v2, v4, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setTextClick(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/g;

    invoke-direct {v3, p1}, Lcom/fl/saas/adx/base/inner/g;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)V

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->nextCondition(Lcom/fl/saas/b1;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/h;

    invoke-direct {v3, p1, p0}, Lcom/fl/saas/adx/base/inner/h;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;Landroid/content/Context;)V

    const-string p1, "\u529f\u80fd\u4ecb\u7ecd > "

    invoke-virtual {v2, p1, v3}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setTextClick(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->build()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p0, 0x2

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v1, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1
.end method

.method public static synthetic d(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppPrivacyUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppPrivacyUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic e(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getPrivacyClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getPrivacyClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;->onClick()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppPrivacyUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "\u9690\u79c1\u534f\u8bae"

    .line 20
    .line 21
    invoke-static {p1, p0, v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getFunctionUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getFunctionClick()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo$ClickEvent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
