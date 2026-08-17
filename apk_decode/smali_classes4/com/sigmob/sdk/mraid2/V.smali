.class public final synthetic Lcom/sigmob/sdk/mraid2/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/V;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid2/V;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/V;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid2/V;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/V;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/V;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/V;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/V;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/mraid2/s$2;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
