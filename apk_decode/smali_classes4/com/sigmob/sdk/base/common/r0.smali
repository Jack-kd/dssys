.class public final synthetic Lcom/sigmob/sdk/base/common/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/r0;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/r0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/r0;->a:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/r0;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/o;->e(Ljava/lang/Throwable;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method
