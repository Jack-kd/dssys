.class final Lcom/octopus/ad/internal/d/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/d/h;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/d/h;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/d/h$b;->a:Lcom/octopus/ad/internal/d/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/d/h$b;->b:Ljava/net/Socket;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/d/h$b;->a:Lcom/octopus/ad/internal/d/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/internal/d/h$b;->b:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/d/h;->a(Lcom/octopus/ad/internal/d/h;Ljava/net/Socket;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
