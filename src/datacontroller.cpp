#include "datacontroller.h"
#include "articles.h"
#include "playersapi.h"
#include "scheduleapi.h"
#include "standings.h"
#include "teamapi.h"

DataController::DataController(QObject* parent)
  : QObject(parent)
  , _standingsAPI(new Standings())
  , _articles(new Articles())
  , _teamAPI(new TeamAPI())
  , _scheduleAPI(new ScheduleAPI())
  , _playersAPI(new PlayersAPI())
{
}

DataController::~DataController() noexcept = default;

QObject* DataController::standings() const noexcept
{
    return _standingsAPI.get();
}

Articles* DataController::articles() const noexcept
{
    return _articles.get();
}

QObject* DataController::teamAPI() const noexcept
{
    return _teamAPI.get();
}

QObject* DataController::scheduleAPI() const noexcept
{
    return _scheduleAPI.get();
}

QObject* DataController::playersAPI() const noexcept
{
    return _playersAPI.get();
}
