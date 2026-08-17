.class Lcom/octopus/ad/internal/e/a$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/a/d;

.field final synthetic b:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$26;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a$26;->a:Lcom/octopus/ad/a/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$26;->b:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->Q(Lcom/octopus/ad/internal/e/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$26;->a:Lcom/octopus/ad/a/d;

    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/e/a;Landroid/view/MotionEvent;ZLcom/octopus/ad/a/d;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method
