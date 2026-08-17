.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;

.field public final synthetic val$videoThumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->val$videoThumb:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->val$videoThumb:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->val$videoThumb:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->val$videoThumb:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x19

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$600(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/ImageView;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
