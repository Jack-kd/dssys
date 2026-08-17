.class public final synthetic Lcom/sigmob/sdk/splash/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/splash/i$5;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/i$5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/y;->a:Lcom/sigmob/sdk/splash/i$5;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/y;->a:Lcom/sigmob/sdk/splash/i$5;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/y;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/splash/i$5;->a(Lcom/sigmob/sdk/splash/i$5;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
