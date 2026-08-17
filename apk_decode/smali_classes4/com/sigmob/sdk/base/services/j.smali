.class public final synthetic Lcom/sigmob/sdk/base/services/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/o;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/services/j;->b:Lcom/sigmob/sdk/base/o;

    iput-object p2, p0, Lcom/sigmob/sdk/base/services/j;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/services/j;->b:Lcom/sigmob/sdk/base/o;

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/j;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/services/b;->b(Lcom/sigmob/sdk/base/o;Landroid/content/Context;)V

    return-void
.end method
