.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild2;
.implements Landroid/support/v4/view/NestedScrollingParent2;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;,
        Landroid/support/v4/widget/NestedScrollView$SavedState;,
        Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 175
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    .line 177
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 130
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 146
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 156
    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 161
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    .line 162
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    .line 199
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initScrollView()V

    .line 201
    sget-object v2, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 206
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    new-instance p1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 209
    new-instance p1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 212
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 214
    sget-object p1, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private canScroll()Z
    .registers 5

    .line 494
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2d

    .line 495
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 498
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1

    :cond_2d
    return v1
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    sub-int/2addr p2, p1

    return p2

    :cond_b
    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .registers 4

    if-eqz p1, :cond_e

    .line 1362
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1363
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1365
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    .line 1839
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1841
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1842
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1844
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_17

    .line 1845
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1846
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_17
    return-void
.end method

.method private ensureGlows()V
    .registers 3

    .line 1874
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 1875
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_23

    .line 1876
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1877
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1878
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_23

    :cond_1e
    const/4 v0, 0x0

    .line 1881
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1882
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_23
    :goto_23
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16

    const/4 v0, 0x2

    .line 1107
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v3, v1, :cond_54

    .line 1121
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1122
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1123
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    const/4 v9, 0x1

    if-ge p2, v8, :cond_51

    if-ge v7, p3, :cond_51

    if-ge p2, v7, :cond_29

    if-ge v8, p3, :cond_29

    const/4 v10, 0x1

    goto :goto_2a

    :cond_29
    const/4 v10, 0x0

    :goto_2a
    if-nez v4, :cond_2f

    move-object v4, v6

    move v5, v10

    goto :goto_51

    :cond_2f
    if-eqz p1, :cond_37

    .line 1139
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3f

    :cond_37
    if-nez p1, :cond_41

    .line 1140
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_41

    :cond_3f
    const/4 v7, 0x1

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    if-eqz v5, :cond_49

    if-eqz v10, :cond_51

    if-eqz v7, :cond_51

    goto :goto_50

    :cond_49
    if-eqz v10, :cond_4e

    move-object v4, v6

    const/4 v5, 0x1

    goto :goto_51

    :cond_4e
    if-eqz v7, :cond_51

    :goto_50
    move-object v4, v6

    :cond_51
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_54
    return-object v4
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6

    .line 1829
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_8

    if-lez p1, :cond_11

    .line 1831
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_13

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    int-to-float v1, p1

    const/4 v2, 0x0

    .line 1832
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1833
    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1834
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    :cond_22
    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .line 1000
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    .line 1001
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1002
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1003
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1008
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 1011
    :cond_34
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .registers 7

    .line 646
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 647
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 648
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 649
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_2a

    .line 650
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_2a

    .line 651
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_2a

    .line 652
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1

    :cond_2b
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 661
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_10
    return-void
.end method

.method private initScrollView()V
    .registers 3

    .line 431
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 433
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 435
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    .line 437
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    .line 438
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 666
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 667
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    .line 1340
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1804
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1805
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    .line 1348
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1349
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1351
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1352
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 955
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 956
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 957
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_27

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 962
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 963
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 964
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_27

    .line 965
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_27
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 672
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 673
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 674
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    .line 1256
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1257
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 1261
    :goto_12
    invoke-direct {p0, v4, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_19

    move-object v5, p0

    :cond_19
    if-lt p2, v1, :cond_1e

    if-gt p3, v0, :cond_1e

    goto :goto_28

    :cond_1e
    if-eqz v4, :cond_22

    sub-int/2addr p2, v1

    goto :goto_24

    :cond_22
    sub-int p2, p3, v0

    .line 1270
    :goto_24
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    const/4 v2, 0x1

    .line 1273
    :goto_28
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_31

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_31
    return v2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 3

    .line 1562
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1565
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1567
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    .line 1570
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1583
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_15

    if-eqz p2, :cond_12

    .line 1587
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_15

    .line 1589
    :cond_12
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 443
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 444
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 452
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 453
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 470
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 471
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 461
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 462
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .registers 9

    .line 1286
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1289
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1291
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_36

    .line 1293
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1294
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1295
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1296
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1297
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    .line 1298
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_7e

    :cond_36
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    .line 1303
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    .line 1304
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_74

    :cond_48
    if-ne p1, v4, :cond_74

    .line 1306
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_74

    .line 1307
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1308
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1309
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    .line 1310
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 1311
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_74
    :goto_74
    if-nez v2, :cond_77

    return v3

    :cond_77
    if-ne p1, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    neg-int v2, v2

    .line 1317
    :goto_7b
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    :goto_7e
    if-eqz v0, :cond_9b

    .line 1320
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1321
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1327
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 1328
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1329
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1330
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    :cond_9b
    const/4 p1, 0x1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1472
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1465
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1458
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 19

    move-object/from16 v10, p0

    .line 1507
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_99

    .line 1508
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 1509
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1511
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    sub-int v6, v13, v0

    const/4 v1, 0x0

    .line 1514
    iget-object v3, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v10

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1515
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v12

    sub-int/2addr v6, v0

    :cond_2c
    move v14, v6

    if-eqz v14, :cond_93

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v15

    .line 1520
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v9

    const/4 v1, 0x0

    .line 1522
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v0, v10

    move v2, v14

    move v4, v9

    move v6, v15

    move v11, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1524
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v11

    sub-int v4, v14, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v10

    .line 1527
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-nez v0, :cond_93

    .line 1529
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_6b

    if-ne v0, v12, :cond_68

    if-lez v15, :cond_68

    goto :goto_6b

    :cond_68
    const/16 v17, 0x0

    goto :goto_6d

    :cond_6b
    :goto_6b
    const/16 v17, 0x1

    :goto_6d
    if-eqz v17, :cond_93

    .line 1533
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    if-gtz v13, :cond_83

    if-lez v11, :cond_83

    .line 1535
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_93

    :cond_83
    if-lt v13, v15, :cond_93

    if-ge v11, v15, :cond_93

    .line 1537
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1544
    :cond_93
    :goto_93
    iput v13, v10, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    .line 1545
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_a5

    .line 1548
    :cond_99
    invoke-virtual {v10, v12}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1549
    invoke-virtual {v10, v12}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    :cond_a2
    const/4 v0, 0x0

    .line 1552
    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    :goto_a5
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12

    .line 1604
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1606
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1607
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1611
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1616
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v2, v4

    .line 1623
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1624
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1625
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_36

    sub-int v4, v3, v4

    goto :goto_37

    :cond_36
    move v4, v3

    .line 1631
    :goto_37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5b

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v2, :cond_5b

    .line 1636
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v0, :cond_4a

    .line 1638
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_4e

    .line 1641
    :cond_4a
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    add-int/2addr p1, v1

    .line 1645
    :goto_4e
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 1647
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_7b

    .line 1649
    :cond_5b
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_7b

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_7b

    .line 1654
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_6e

    .line 1656
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_72

    .line 1659
    :cond_6e
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1663
    :goto_72
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7b
    :goto_7b
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1451
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1444
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1420
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1421
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    .line 1426
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1427
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1428
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1429
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    .line 1430
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_35

    sub-int/2addr v2, v3

    goto :goto_39

    :cond_35
    if-le v3, v0, :cond_39

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_39
    :goto_39
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 592
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 277
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 237
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1888
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1889
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e2

    .line 1890
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1891
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-nez v1, :cond_73

    .line 1892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1893
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    .line 1894
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 1896
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1897
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_33

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_31

    goto :goto_33

    :cond_31
    const/4 v7, 0x0

    goto :goto_42

    .line 1898
    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 1899
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v2

    .line 1901
    :goto_42
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_5b

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1902
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    .line 1903
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    :cond_5b
    int-to-float v7, v7

    int-to-float v6, v6

    .line 1905
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1906
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1907
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1908
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1910
    :cond_70
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1912
    :cond_73
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_e2

    .line 1913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1914
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    .line 1915
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 1917
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 1918
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_9a

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 1919
    :cond_9a
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 1920
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v2, v6

    .line 1922
    :cond_a9
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_c2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 1923
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v5, v3

    .line 1924
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_c2
    sub-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v0, v0

    .line 1926
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000  # 180.0f

    int-to-float v2, v4

    const/4 v3, 0x0

    .line 1927
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1928
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1929
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1930
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1932
    :cond_df
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_e2
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1  # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 604
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 606
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_37

    .line 607
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_36

    .line 608
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_22

    const/4 p1, 0x0

    .line 610
    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_35

    if-eq p1, p0, :cond_35

    .line 614
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1

    :cond_36
    return v1

    .line 620
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_76

    .line 621
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6b

    packed-switch v0, :pswitch_data_78

    goto :goto_76

    .line 630
    :pswitch_4b  #0x14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_56

    .line 631
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_76

    .line 633
    :cond_56
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_76

    .line 623
    :pswitch_5b  #0x13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_66

    .line 624
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_76

    .line 626
    :cond_66
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_76

    .line 637
    :cond_6b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_73

    const/16 v2, 0x21

    :cond_73
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    :cond_76
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x13
        :pswitch_5b  #00000013
        :pswitch_4b  #00000014
    .end packed-switch
.end method

.method public fling(I)V
    .registers 15

    .line 1816
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1817
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 1818
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1823
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    .line 1824
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 1223
    :goto_9
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1225
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1226
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_41

    .line 1229
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_41

    sub-int/2addr v0, v1

    .line 1231
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1233
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1234
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1238
    :cond_41
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .line 406
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 413
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_33

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_33
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .line 427
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .registers 5

    .line 1080
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    .line 1081
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1083
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1084
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1085
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2e
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 396
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_16

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_16
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .line 231
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isFillViewport()Z
    .registers 2

    .line 512
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 6

    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1483
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    .line 1484
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1483
    invoke-static {p2, v0, p3}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 1486
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1488
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 1494
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1497
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1496
    invoke-static {p2, p5, p3}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1499
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1502
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1771
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1773
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    goto :goto_44

    .line 975
    :cond_12
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_44

    const/16 v0, 0x9

    .line 976
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_44

    .line 978
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 979
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    .line 980
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_36

    const/4 p1, 0x0

    goto :goto_39

    :cond_36
    if-le p1, v0, :cond_39

    move p1, v0

    :cond_39
    :goto_39
    if-eq p1, v2, :cond_44

    .line 988
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_44
    :goto_44
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    .line 700
    iget-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_d

    return v2

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    if-eq v0, v3, :cond_cf

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_d6

    goto/16 :goto_d2

    .line 715
    :pswitch_19  #0x2
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v0, v3, :cond_1f

    goto/16 :goto_d2

    .line 721
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v3, :cond_42

    const-string p1, "NestedScrollView"

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 728
    :cond_42
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 729
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 730
    iget v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_d2

    .line 731
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_d2

    .line 732
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 733
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 734
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 735
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 736
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 737
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d2

    .line 739
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d2

    .line 777
    :pswitch_72  #0x1, 0x3
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 778
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 779
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 780
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 781
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 783
    :cond_93
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_d2

    .line 746
    :pswitch_97  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->inChild(II)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 748
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 749
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_d2

    .line 757
    :cond_ad
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 758
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 760
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 761
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 768
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 769
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 770
    invoke-virtual {p0, v1, v4}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_d2

    .line 786
    :cond_cf
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 794
    :cond_d2
    :goto_d2
    iget-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    return p1

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_72  #00000001
        :pswitch_19  #00000002
        :pswitch_72  #00000003
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1733
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1734
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1736
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_17

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {p2, p0}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1737
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_17
    const/4 p2, 0x0

    .line 1739
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1741
    iget-boolean p4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_65

    .line 1743
    iget-object p4, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_2f

    .line 1744
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v0, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1745
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1751
    :cond_2f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_49

    .line 1752
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1753
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1754
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    :cond_49
    sub-int/2addr p5, p3

    .line 1756
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 1757
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    .line 1758
    invoke-static {p2, p5, p1}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p1

    if-eq p1, p2, :cond_65

    .line 1760
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1765
    :cond_65
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1766
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 556
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 558
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    return-void

    .line 562
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    return-void

    .line 567
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_58

    const/4 p2, 0x0

    .line 568
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 569
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 571
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 572
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    .line 573
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 574
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_58

    .line 580
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 579
    invoke-static {p1, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    .line 583
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 584
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_58
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_8

    float-to-int p1, p3

    .line 366
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 374
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 360
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 12
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    .line 331
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 354
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 14

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    const/4 p2, 0x0

    .line 321
    invoke-virtual {p0, p2, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 322
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    sub-int v2, p2, p1

    sub-int v4, p5, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p6

    .line 324
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 307
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    .line 308
    invoke-virtual {p0, p1, p4}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 1017
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p1, 0x82

    goto :goto_b

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1700
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1701
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    return v1

    .line 1708
    :cond_23
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v1

    .line 1712
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1969
    instance-of v0, p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_8

    .line 1970
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1974
    :cond_8
    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1975
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1976
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1977
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1982
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1983
    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1984
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 12

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 549
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_11

    .line 550
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V

    :cond_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1778
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1780
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_27

    if-ne p0, p1, :cond_c

    goto :goto_27

    :cond_c
    const/4 p2, 0x0

    .line 1788
    invoke-direct {p0, p1, p2, p4}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1789
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1790
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1791
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1792
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    :cond_26
    return-void

    :cond_27
    :goto_27
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 314
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 799
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 801
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_14

    .line 806
    iput v13, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 808
    :cond_14
    iget v1, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, -0x1

    const/4 v15, 0x1

    packed-switch v0, :pswitch_data_260

    :pswitch_20  #0x4
    goto/16 :goto_252

    .line 942
    :pswitch_22  #0x6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 943
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_252

    .line 936
    :pswitch_34  #0x5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 937
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 938
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_252

    .line 926
    :pswitch_47  #0x3
    iget-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_6b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6b

    .line 927
    iget-object v2, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 927
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 929
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 932
    :cond_6b
    iput v1, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 933
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_252

    .line 837
    :pswitch_72  #0x2
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    if-ne v9, v1, :cond_99

    const-string v0, "NestedScrollView"

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_252

    .line 843
    :cond_99
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 844
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v7, v0, v6

    const/4 v1, 0x0

    .line 845
    iget-object v3, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object v0, v10

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 847
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v15

    sub-int/2addr v7, v0

    .line 848
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    invoke-virtual {v12, v14, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 849
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 851
    :cond_c6
    iget-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_e6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v0, v1, :cond_e6

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 854
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 856
    :cond_db
    iput-boolean v15, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-lez v7, :cond_e3

    .line 858
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v7, v0

    goto :goto_e6

    .line 860
    :cond_e3
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v7, v0

    :cond_e6
    :goto_e6
    move v8, v7

    .line 863
    iget-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_252

    .line 865
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int/2addr v6, v0

    iput v6, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 867
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v16

    .line 868
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_108

    if-ne v0, v15, :cond_105

    if-lez v7, :cond_105

    goto :goto_108

    :cond_105
    const/16 v17, 0x0

    goto :goto_10a

    :cond_108
    :goto_108
    const/16 v17, 0x1

    :goto_10a
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v0, v10

    move v2, v8

    move v6, v7

    move/from16 v21, v7

    move/from16 v7, v18

    move v14, v8

    move/from16 v8, v19

    move/from16 v22, v9

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 876
    invoke-virtual {v10, v13}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_136

    .line 878
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 881
    :cond_136
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v16

    sub-int v4, v14, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 883
    iget-object v5, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 885
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 886
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 887
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    goto/16 :goto_252

    :cond_167
    if-eqz v17, :cond_252

    .line 889
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    add-int v0, v16, v14

    if-gez v0, :cond_196

    .line 892
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v2, v22

    .line 893
    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 892
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 894
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c2

    .line 895
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1c2

    :cond_196
    move/from16 v1, v21

    move/from16 v2, v22

    if-le v0, v1, :cond_1c2

    .line 898
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000  # 1.0f

    .line 899
    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    .line 898
    invoke-static {v0, v1, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 901
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c2

    .line 902
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 905
    :cond_1c2
    :goto_1c2
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_252

    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 906
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1d6

    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_252

    .line 907
    :cond_1d6
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_252

    .line 913
    :pswitch_1db  #0x1
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 914
    iget v3, v10, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 915
    iget v2, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 916
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_1f9

    neg-int v0, v0

    .line 917
    invoke-direct {v10, v0}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    goto :goto_213

    .line 918
    :cond_1f9
    iget-object v2, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 919
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 918
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_213

    .line 920
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 922
    :cond_213
    :goto_213
    iput v1, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 923
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto :goto_252

    .line 812
    :pswitch_219  #0x0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_220

    return v13

    .line 815
    :cond_220
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v15

    iput-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_234

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_234

    .line 818
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 826
    :cond_234
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_241

    .line 827
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 831
    :cond_241
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 832
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    .line 833
    invoke-virtual {v10, v0, v13}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 947
    :cond_252
    :goto_252
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_25b

    .line 948
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 950
    :cond_25b
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v15

    nop

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_219  #00000000
        :pswitch_1db  #00000001
        :pswitch_72  #00000002
        :pswitch_47  #00000003
        :pswitch_20  #00000004
        :pswitch_34  #00000005
        :pswitch_22  #00000006
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 26

    move-object/from16 v0, p0

    .line 1025
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 1027
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 1029
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v1, :cond_2b

    if-ne v1, v5, :cond_29

    if-eqz v2, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v2, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v2, 0x1

    :goto_2c
    if-eqz v1, :cond_35

    if-ne v1, v5, :cond_33

    if-eqz v3, :cond_33

    goto :goto_35

    :cond_33
    const/4 v6, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v6, 0x1

    :goto_36
    add-int v1, p3, p1

    if-nez v2, :cond_3c

    const/4 v7, 0x0

    goto :goto_3e

    :cond_3c
    move/from16 v7, p7

    :goto_3e
    add-int v2, p4, p2

    if-nez v6, :cond_44

    const/4 v3, 0x0

    goto :goto_46

    :cond_44
    move/from16 v3, p8

    :goto_46
    neg-int v6, v7

    add-int v7, v7, p5

    neg-int v8, v3

    add-int v3, v3, p6

    if-le v1, v7, :cond_51

    move v6, v7

    :goto_4f
    const/4 v1, 0x1

    goto :goto_56

    :cond_51
    if-ge v1, v6, :cond_54

    goto :goto_4f

    :cond_54
    move v6, v1

    const/4 v1, 0x0

    :goto_56
    if-le v2, v3, :cond_5b

    move v8, v3

    :goto_59
    const/4 v2, 0x1

    goto :goto_60

    :cond_5b
    if-ge v2, v8, :cond_5e

    goto :goto_59

    :cond_5e
    move v8, v2

    const/4 v2, 0x0

    :goto_60
    if-eqz v2, :cond_76

    .line 1069
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v3

    if-nez v3, :cond_76

    .line 1070
    iget-object v9, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v15

    move v10, v6

    move v11, v8

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1073
    :cond_76
    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v1, :cond_7d

    if-eqz v2, :cond_7e

    :cond_7d
    const/4 v4, 0x1

    :cond_7e
    return v4
.end method

.method public pageScroll(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 1185
    :goto_9
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_42

    .line 1188
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1189
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_55

    sub-int/2addr v0, v1

    .line 1191
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1193
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    if-le v1, v0, :cond_55

    .line 1195
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_55

    .line 1199
    :cond_42
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1200
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_55

    .line 1201
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1204
    :cond_55
    :goto_55
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1206
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1670
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_8

    .line 1671
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_a

    .line 1674
    :cond_8
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1676
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1719
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1720
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1719
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1722
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 681
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 683
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    .line 1727
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1728
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 9

    .line 1858
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_58

    const/4 v0, 0x0

    .line 1859
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1861
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1862
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1863
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1864
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1865
    invoke-static {p1, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1866
    invoke-static {p2, v4, v0}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1867
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_55

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_58

    .line 1868
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_58
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .line 524
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 525
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    .line 526
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 251
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2
    .param p1  # Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 487
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 542
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 9

    .line 1377
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1381
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0xfa

    cmp-long v2, v4, v0

    if-lez v2, :cond_5e

    const/4 p1, 0x0

    .line 1383
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1384
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1385
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1386
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1387
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v1

    .line 1388
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v2

    .line 1389
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, v2

    .line 1390
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    .line 1391
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1392
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_6e

    .line 1394
    :cond_5e
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1395
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1397
    :cond_6b
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1399
    :goto_6e
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .registers 4

    .line 1409
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    .line 221
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
