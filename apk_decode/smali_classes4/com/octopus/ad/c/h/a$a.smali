.class public Lcom/octopus/ad/c/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/c/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/octopus/ad/c/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/octopus/ad/c/h/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/h/a;-><init>(Lcom/octopus/ad/c/h/d;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/octopus/ad/c/h/a$a;->a:Lcom/octopus/ad/c/h/a;

    .line 8
    .line 9
    return-void
.end method
