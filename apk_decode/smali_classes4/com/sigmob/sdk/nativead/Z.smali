.class public final synthetic Lcom/sigmob/sdk/nativead/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/Z;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/Z;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/nativead/y;->b(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
