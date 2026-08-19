.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$100(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/LinearLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0xf

    .line 22
    .line 23
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$100(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/LinearLayout;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void

    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
