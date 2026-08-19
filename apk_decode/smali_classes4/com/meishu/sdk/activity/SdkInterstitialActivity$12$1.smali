.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;

.field public final synthetic val$videoBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;->val$videoBitmap:Landroid/graphics/Bitmap;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;->val$videoBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
