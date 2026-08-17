.class public abstract Lkotlinx/coroutines/K;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/M0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/K$a;
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/K$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/K$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/K$a;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lkotlinx/coroutines/K;->b:Lkotlinx/coroutines/K$a;

    return-void
.end method


# virtual methods
.method public abstract C()J
.end method
