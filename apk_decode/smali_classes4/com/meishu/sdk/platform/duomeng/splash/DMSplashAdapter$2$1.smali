.class Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->onRenderSuccess(Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;

.field public final synthetic val$dmSplashAd:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->val$dmSplashAd:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->val$dmSplashAd:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->access$300(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->val$dmSplashAd:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->access$400(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;->val$dmSplashAd:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->access$200(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
