.class public final synthetic Lcom/sigmob/sdk/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/manager/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/manager/b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/manager/h;->a:Lcom/sigmob/sdk/manager/b;

    iput-object p2, p0, Lcom/sigmob/sdk/manager/h;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sigmob/sdk/manager/h;->c:I

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/manager/h;->a:Lcom/sigmob/sdk/manager/b;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/h;->b:Ljava/lang/String;

    iget v2, p0, Lcom/sigmob/sdk/manager/h;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/manager/b;->e(Lcom/sigmob/sdk/manager/b;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
