.class public final synthetic Lcom/sigmob/sdk/base/common/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/n0;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n0;->a:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/l;->b(Ljava/util/HashMap;Ljava/lang/Object;)V

    return-void
.end method
