.class public final synthetic Lcom/sigmob/sdk/base/services/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/services/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/base/services/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/h;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/services/a;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
