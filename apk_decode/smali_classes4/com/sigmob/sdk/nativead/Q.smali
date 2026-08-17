.class public final synthetic Lcom/sigmob/sdk/nativead/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/nativead/Q;->a:I

    iput p2, p0, Lcom/sigmob/sdk/nativead/Q;->b:I

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/nativead/Q;->a:I

    iget v1, p0, Lcom/sigmob/sdk/nativead/Q;->b:I

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/nativead/e;->n(IILjava/lang/Object;)V

    return-void
.end method
