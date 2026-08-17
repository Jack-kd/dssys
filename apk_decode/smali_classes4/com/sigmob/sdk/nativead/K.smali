.class public final synthetic Lcom/sigmob/sdk/nativead/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/nativead/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/K;->a:Lcom/sigmob/sdk/nativead/b;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/K;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/K;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/K;->a:Lcom/sigmob/sdk/nativead/b;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/K;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/K;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/sdk/nativead/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
