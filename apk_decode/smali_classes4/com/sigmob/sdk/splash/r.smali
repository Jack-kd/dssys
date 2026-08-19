.class public final synthetic Lcom/sigmob/sdk/splash/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/splash/i$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/splash/f;

.field public final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/r;->a:Lcom/sigmob/sdk/splash/f;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/r;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/r;->a:Lcom/sigmob/sdk/splash/f;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/r;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/splash/f;->q(Lcom/sigmob/sdk/splash/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;I)V

    return-void
.end method
