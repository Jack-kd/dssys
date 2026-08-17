.class public final synthetic Lcom/sigmob/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(IZZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/f;->a:I

    iput-boolean p2, p0, Lcom/sigmob/sdk/f;->b:Z

    iput-boolean p3, p0, Lcom/sigmob/sdk/f;->c:Z

    iput p4, p0, Lcom/sigmob/sdk/f;->d:I

    iput-boolean p5, p0, Lcom/sigmob/sdk/f;->e:Z

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/f;->a:I

    iget-boolean v1, p0, Lcom/sigmob/sdk/f;->b:Z

    iget-boolean v2, p0, Lcom/sigmob/sdk/f;->c:Z

    iget v3, p0, Lcom/sigmob/sdk/f;->d:I

    iget-boolean v4, p0, Lcom/sigmob/sdk/f;->e:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/Sigmob;->b(IZZIZLjava/lang/Object;)V

    return-void
.end method
