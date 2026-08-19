.class Lcom/octopus/ad/internal/d/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/d/m;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/d/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/d/m$a;->a:Lcom/octopus/ad/internal/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/d/m;Lcom/octopus/ad/internal/d/m$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/m$a;-><init>(Lcom/octopus/ad/internal/d/m;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/m$a;->a:Lcom/octopus/ad/internal/d/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/d/m;->a(Lcom/octopus/ad/internal/d/m;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/d/m$a;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
