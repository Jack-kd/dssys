.class Lcom/sigmob/sdk/manager/f$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/manager/f$2;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/manager/f$2;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/manager/f$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f$2$1;->a:Lcom/sigmob/sdk/manager/f$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f$2$1;->a:Lcom/sigmob/sdk/manager/f$2;

    iget-object v0, v0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/manager/f$2$1;->a:Lcom/sigmob/sdk/manager/f$2;

    iget-object v0, v0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    return-void
.end method
