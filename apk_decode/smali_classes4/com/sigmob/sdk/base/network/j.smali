.class public final synthetic Lcom/sigmob/sdk/base/network/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/j;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sigmob/sdk/base/network/j;->c:I

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/j;->b:Ljava/lang/String;

    iget v2, p0, Lcom/sigmob/sdk/base/network/j;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/base/network/a;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
