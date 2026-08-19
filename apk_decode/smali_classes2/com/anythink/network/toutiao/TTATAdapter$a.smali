.class Lcom/anythink/network/toutiao/TTATAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->c:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->d:Lcom/anythink/network/toutiao/TTATAdapter;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->d:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATAdapter$a;->c:Ljava/util/Map;

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/anythink/network/toutiao/TTATAdapter;->g:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
