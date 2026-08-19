.class public final synthetic Lcom/sigmob/sdk/base/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/m;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sigmob/sdk/base/common/z;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/m;Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/q;->a:Lcom/sigmob/sdk/base/m;

    iput-object p2, p0, Lcom/sigmob/sdk/base/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/q;->c:Lcom/sigmob/sdk/base/common/z;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/q;->a:Lcom/sigmob/sdk/base/m;

    iget-object v1, p0, Lcom/sigmob/sdk/base/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/q;->c:Lcom/sigmob/sdk/base/common/z;

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/base/m;->a(Lcom/sigmob/sdk/base/m;Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;Ljava/lang/Object;)V

    return-void
.end method
