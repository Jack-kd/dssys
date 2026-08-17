.class Lcom/octopus/ad/internal/d/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/d/o;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/d/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/d/o$a;->a:Lcom/octopus/ad/internal/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/d/o;Lcom/octopus/ad/internal/d/o$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/d/o$a;-><init>(Lcom/octopus/ad/internal/d/o;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/o$a;->a:Lcom/octopus/ad/internal/d/o;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/d/o;->a(Lcom/octopus/ad/internal/d/o;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
