.class Lcom/anythink/network/meishu/MsATBannerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/meishu/MsATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATBannerAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->d:Lcom/anythink/network/meishu/MsATBannerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->c:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->d:Lcom/anythink/network/meishu/MsATBannerAdapter;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATBannerAdapter$a;->d:Lcom/anythink/network/meishu/MsATBannerAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/anythink/network/meishu/MsATBannerAdapter$a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATBannerAdapter$a$a;-><init>(Lcom/anythink/network/meishu/MsATBannerAdapter$a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
