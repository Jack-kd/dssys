.class public final synthetic Lcom/sigmob/sdk/manager/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/manager/b;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/manager/b;Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/manager/j;->a:Lcom/sigmob/sdk/manager/b;

    iput-object p2, p0, Lcom/sigmob/sdk/manager/j;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/sdk/manager/j;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/j;->a:Lcom/sigmob/sdk/manager/b;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/j;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/sigmob/sdk/manager/j;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/manager/b;->c(Lcom/sigmob/sdk/manager/b;Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method
