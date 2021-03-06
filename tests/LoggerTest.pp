{*******************************************************}

{   Renegade BBS                                        }

{   Copyright (c) 1990-2013 The Renegade Dev Team       }
{   Copyleft  (ↄ) 2016-2017 Renegade BBS                }

{   This file is part of Renegade BBS                   }

{   Renegade is free software: you can redistribute it  }
{   and/or modify it under the terms of the GNU General }
{   Public License as published by the Free Software    }
{   Foundation, either version 3 of the License, or     }
{   (at your option) any later version.                 }

{   Renegade is distributed in the hope that it will be }
{   useful, but WITHOUT ANY WARRANTY; without even the  }
{   implied warranty of MERCHANTABILITY or FITNESS FOR  }
{   A PARTICULAR PURPOSE.  See the GNU General Public   }
{   License for more details.                           }

{   You should have received a copy of the GNU General  }
{   Public License along with Renegade.  If not, see    }
{   <http://www.gnu.org/licenses/>.                     }

{*******************************************************}
{   _______                                  __         }
{  |   _   .-----.-----.-----.-----.---.-.--|  .-----.  }
{  |.  l   |  -__|     |  -__|  _  |  _  |  _  |  -__|  }
{  |.  _   |_____|__|__|_____|___  |___._|_____|_____|  }
{  |:  |   |                 |_____|                    }
{  |::.|:. |                                            }
{  `--- ---'                                            }
{*******************************************************}
{$mode objfpc}
{$codepage utf8}
{$packrecords c}
{$h+}

program LoggerTest;

uses
  Classes,
  Renegade.Logger,
  Logger.SysLogHandler,
  Logger.StreamHandler,
  Logger.FileHandler,
  Logger.NullHandler,
  Logger.ConsoleHandler,
  Logger.RecordHandler;

var
  StreamLogHandler: StreamHandler;
  Log: RTLogger;
  LogFileHandler: FileHandler;
  MemoryStream: TMemoryStream;
  NullLogHandler: NullHandler;
  ConsoleLogHandler: ConsoleHandler;
  RecordLogHandler : RecordHandler;
begin
  //MemoryStream := TMemoryStream.Create;
  //StreamLogHandler := StreamHandler.Create('test.log');
  //StreamLogHandler := StreamHandler.Create(MemoryStream);
  //LogFileHandler := FileHandler.Create('test.log');
  //NullLogHandler := NullHandler.Create;
  //ConsoleLogHandler := ConsoleHandler.Create;
  RecordLogHandler := RecordHandler.Create;

  Log := RTLogger.Create(RecordLogHandler);

  //Log.Log(LOG_E, 'Test', []);
  Log.Info('Testing', ['File', True, 'Error', True, 'Extended', 'Extend']);
  Log.Debug('Debugging', []);
  Log.Error('Error', []);
end.
