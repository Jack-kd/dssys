.class public final synthetic Lcom/sigmob/sdk/nativead/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/nativead/P;->a:I

    iput p2, p0, Lcom/sigmob/sdk/nativead/P;->b:I

    iput p3, p0, Lcom/sigmob/sdk/nativead/P;->c:I

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/nativead/P;->a:I

    iget v1, p0, Lcom/sigmob/sdk/nativead/P;->b:I

    iget v2, p0, Lcom/sigmob/sdk/nativead/P;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/nativead/e;->o(IIILjava/lang/Object;)V

    return-void
.end method
