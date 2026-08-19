.class synthetic Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fl$saas$base$bean$CloseButtonPosition:[I

.field static final synthetic $SwitchMap$com$fl$saas$base$bean$Orientation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/fl/saas/q0;->values()[Lcom/fl/saas/q0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$Orientation:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$Orientation:[I

    sget-object v3, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/fl/saas/s;->values()[Lcom/fl/saas/s;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$CloseButtonPosition:[I

    :try_start_2
    sget-object v3, Lcom/fl/saas/s;->c:Lcom/fl/saas/s;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$CloseButtonPosition:[I

    sget-object v2, Lcom/fl/saas/s;->d:Lcom/fl/saas/s;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
