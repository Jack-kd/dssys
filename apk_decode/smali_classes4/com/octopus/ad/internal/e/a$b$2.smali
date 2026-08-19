.class Lcom/octopus/ad/internal/e/a$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a$b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/octopus/ad/internal/e/a$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$b$2;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/internal/e/a$b$2;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$2;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 4
    .line 5
    iget v1, p0, Lcom/octopus/ad/internal/e/a$b$2;->a:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
