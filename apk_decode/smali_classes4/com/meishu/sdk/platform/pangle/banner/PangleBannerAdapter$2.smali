.class Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->loadCustomAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

.field public final synthetic val$pid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;->val$pid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$2;->val$pid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->access$000(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
